From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 01/11] spi: rk: Limit transfers to (64K - 1) bytes
Date: Fri, 27 Dec 2019 11:25:03 +0530
Message-ID: <CAMty3ZDNLNRue1OFAvPvo5oxJDwhLinA5GCSJJ7kwc08TOvdXA@mail.gmail.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-2-jagan@amarulasolutions.com>
 <9bec6335-455b-0c62-a68d-a470a3ccdc24@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <9bec6335-455b-0c62-a68d-a470a3ccdc24@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Dec 23, 2019 at 8:00 AM Kever Yang <kever.yang@rock-chips.com> wrot=
e:
>
>
> On 2019/12/21 =E4=B8=8B=E5=8D=883:54, Jagan Teki wrote:
> > The Rockchip SPI controller's length register only supports 16-bits,
> > yielding a maximum length of 64KiB (the CTRLR1 register holds "length -
> > 1"). Trying to transfer more than that (e.g., with a large SPI flash
> > read) will cause the driver to hang.
> >
> > Now, it seems that while theoretically we should be able to program
> > CTRLR1 with 0xffff, and get a 64KiB transfer, but that also seems to
> > cause the core to choke, so stick with a maximum of 64K - 1 bytes --
> > i.e., 0xffff.
> >
> > Note, that the size is further divided into 'minus 1' while writing
> > into CTRLR1.
> >
> > This change fixed two different read issues,
> >
> > 1. sf read failure when with > 0x10000
> >
> > 2. Boot from SPI flash failed during spi_flash_read call in
> >     common/spl/spl_spi.c
> >
> > Observed and Tested in
> > - Rockpro64 with Gigadevice flash
> > - ROC-RK3399-PC with Winbond flash
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-spi/master
