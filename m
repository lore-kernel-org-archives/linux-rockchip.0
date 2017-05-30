From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: update common rk3399 operating
 points
Date: Tue, 30 May 2017 12:13:19 +0200
Message-ID: <83138441.zQW9Y5vCCV@phil>
References: <20170523095109.7337-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170523095109.7337-1-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: eddie.cai.linux@gmail.com, briannorris@chromium.org, dianders@chromium.org, linux-arm-kernel@lists.infradead.org, wxt@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 23. Mai 2017, 11:51:08 CEST schrieb Heiko Stuebner:
> The rk3399 has multiple variants with different frequency ratings.
> The operating points currently in the kernel stem from the op1 variant
> used in Gru ChromeOS devices and may not be suitable for general rk3399
> chips. Therefore bring it back to the official general operating points.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied both for 4.13 with the description in patch2 fixed and
having the patches in reverse order, as discussed in patch2.


Heiko
