From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] ARM: dts: rockchip: Add marvell BT irq config
Date: Wed, 17 Jun 2020 10:45:57 +0200
Message-ID: <159238352489.1408655.7330930491123467152.b4-ty@sntech.de>
References: <20200612130219.v2.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200612130219.v2.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
Sender: linux-kernel-owner@vger.kernel.org
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, dianders@chromium.org, chromeos-bluetooth-upstreaming@chromium.org, mka@chromium.org, devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 12 Jun 2020 13:02:48 -0700, Abhishek Pandit-Subedi wrote:
> Veyron Jaq and Mighty both use the Marvel 8897 WiFi+BT chip. Add wakeup
> and pinctrl block to devicetree so the btmrvl driver can correctly
> configure the wakeup interrupt.

Applied, thanks!

[1/1] ARM: dts: rockchip: Add marvell BT irq config
      commit: 6c2b99a2e7a073575b4ee91abf7d16470991c1f4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
