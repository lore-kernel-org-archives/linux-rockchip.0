From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL] ARM: rockchip: fixup duplicate suspend fix
Date: Wed, 13 May 2015 16:18:18 +0200
Message-ID: <41527875.jtmyBXaoXQ@wuerfel>
References: <4262241.MKs4C65R3h@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <4262241.MKs4C65R3h@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org, chris.zhong@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Wednesday 13 May 2015 16:17:24 Heiko Stuebner wrote:
> Hi Arnd, Olof,
> 
> it looks like I got confused when going through the patches fixing suspend
> issues and from the two of them only one is actually necessary, as both fix
> the same symptom. Thankfully Chris pointed out this issue and also
> confirmed which patch should actually be kept. So this pull-req reverts the
> other (obsolete) one.
> 
> Sorry for the mess-up.
> 

Pulled into the fixes branch, thanks!

	Arnd
