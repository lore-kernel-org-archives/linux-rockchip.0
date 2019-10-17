From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 11/25] PCI: rockchip: Drop storing driver private
 outbound resource data
Date: Thu, 17 Oct 2019 07:24:50 -0500
Message-ID: <CAL_Jsq+Hmwy04-XtTCp+H=H5BeaFVeHXgq1R0xVvBdgPEsDbPw@mail.gmail.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-12-robh@kernel.org>
 <20191017072625.GB19517@infradead.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191017072625.GB19517@infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Christoph Hellwig <hch@infradead.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, PCI <linux-pci@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Michal Simek <michal.simek@xilinx.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>, Shawn Lin <shawn.lin@rock-chips.com>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>, "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>moderated list:AR
List-Id: linux-rockchip.vger.kernel.org

On Thu, Oct 17, 2019 at 2:26 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Wed, Oct 16, 2019 at 03:06:33PM -0500, Rob Herring wrote:
> > +     entry = resource_list_get_entry_of_type(&bridge->windows, IORESOURCE_MEM);
>
> This add another too long line.  Please audit the whole series for that.

82 characters didn't seem worth a line break...

Rob
