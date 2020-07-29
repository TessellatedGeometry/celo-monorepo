import * as React from 'react'
import { StyleSheet, Text, View } from 'react-native'
// import { Cell, GridRow, Spans } from 'src/layout/GridRow'
// import { useScreenSize } from 'src/layout/ScreenSize'
import Body from 'src/codename-allegory/Body'
import SideBar from 'src/codename-allegory/SideBar'
// import Fade from 'react-reveal/Fade'
// import { H4 } from 'src/fonts/Fonts'
import OpenGraph from 'src/header/OpenGraph'
import menuItems from 'src/shared/menu-items'
import { fonts } from 'src/styles'
import { useBooleanToggle } from 'src/utils/useBooleanToggle'

export default function Canvas() {
  const [isOpen, toggleSidebar] = useBooleanToggle()
  return (
    <>
      <OpenGraph
        title="A Wish for Collective Propsperity"
        description="Changing the Heart of Money"
        path={menuItems.WISH.link}
      />
      <View style={styles.root}>
        <View style={styles.nav}>
          <Text onPress={toggleSidebar} style={fonts.p}>
            {isOpen ? 'Close' : 'About'}{' '}
          </Text>
        </View>
        <View style={styles.container}>
          <Body />
          <SideBar isOpen={isOpen} />
        </View>
      </View>
    </>
  )
}

const styles = StyleSheet.create({
  root: {},
  nav: {
    flexDirection: 'row-reverse',
    paddingHorizontal: 30,
    paddingVertical: 10,
  },
  container: {
    flexDirection: 'row',
  },
})