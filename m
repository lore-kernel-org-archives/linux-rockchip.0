From: Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 1/2] pinctrl: rockchip: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:28:12 +0200
Message-ID: <20190726112812.19665-1-anders.roxell@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linus.walleij@linaro.org, heiko@sntech.de
Cc: bjorn.andersson@linaro.org, agross@kernel.org, linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Anders Roxell <anders.roxell@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

When fall-through warnings was enabled by default the following warning
was starting to show up:

../drivers/pinctrl/pinctrl-rockchip.c: In function ‘rockchip_gpio_set_config’:
../drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may fall
 through [-Wimplicit-fallthrough=]
   rockchip_gpio_set_debounce(gc, offset, true);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/pinctrl/pinctrl-rockchip.c:2795:2: note: here
  default:
  ^~~~~~~

Rework so that the compiler doesn't warn about fall-through. Add
'return -ENOTSUPP;' to match the comment.

Fixes: d93512ef0f0e ("Makefile: Globally enable fall-through warning")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/pinctrl/pinctrl-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 62a622159006..dc0bbf198cbc 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2792,6 +2792,7 @@ static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
 		 * still return -ENOTSUPP as before, to make sure the caller
 		 * of gpiod_set_debounce won't change its behaviour.
 		 */
+		return -ENOTSUPP;
 	default:
 		return -ENOTSUPP;
 	}
-- 
2.20.1
