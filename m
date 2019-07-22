From: Will Deacon <will@kernel.org>
Subject: Re: kexec on rk3399
Date: Mon, 22 Jul 2019 15:46:36 +0100
Message-ID: <20190722144636.x3bxq2ky7w2yfn3m@willie-the-truck>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Vicente Bergas <vicencb@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jul 22, 2019 at 04:31:27PM +0200, Vicente Bergas wrote:
> Hi, i have been running linux on rk3399 booted with kexec fine until 5.2
> From 5.2 onwards, there are memory corruption issues as reported here:
> http://lkml.iu.edu/hypermail/linux/kernel/1906.2/07211.html
> kexec has been identified as the principal reason for the issues.

I thought that you resolved this issue by upgrading u-boot. Did that not
actually work?

Will
