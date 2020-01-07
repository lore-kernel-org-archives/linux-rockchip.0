From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rockchip: Use ABI name for write protect pin on veyron fievel/tiger
Date: Tue, 07 Jan 2020 22:55:10 +0100
Message-ID: <3032277.n0uFTgx7BP@phil>
References: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, linux-rockchip@lists.infradead.org, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 6. Januar 2020, 22:52:13 CET schrieb Matthias Kaehlcke:
> The flash write protect pin is currently named 'FW_WP_AP', which is
> how the signal is called in the schematics. The Chrome OS ABI
> requires the pin to be named 'AP_FLASH_WP_L', which is also how
> it is called on all other veyron devices. Rename the pin to match
> the ABI.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.6

Thanks
Heiko
