From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 0/2] Fix some GPIO setup on Pinebook Pro
Date: Sun, 19 Apr 2020 13:39:04 +0200
Message-ID: <3127044.X0uEAIj3pV@phil>
References: <20200414163952.1093784-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200414163952.1093784-1-t.schramm@manjaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 14. April 2020, 18:39:50 CEST schrieb Tobias Schramm:
> This patchset contains two small fixes for the dts of the Pinebook Pro.
> The first fixes inverted logic on the headphone detect GPIO.
> The second patch fixes unreliable DC charger detection.
> 
> Tobias Schramm (2):
>   arm64: dts: rockchip: fix inverted headphone detection
>   arm64: dts: rockchip: enable DC charger detection pullup

applied as fixes for 5.7

Thanks
Heiko
