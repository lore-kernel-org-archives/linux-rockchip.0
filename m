From: Anatolij Gustschin <agust@denx.de>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Fri, 24 Jan 2020 18:03:44 +0100
Message-ID: <20200124180344.375e3af4@crub>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
 <20200124152735.GR26536@bill-the-cat>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200124152735.GR26536@bill-the-cat>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Tom Rini <trini@konsulko.com>
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

On Fri, 24 Jan 2020 10:27:35 -0500
Tom Rini trini@konsulko.com wrote:

> This seems like another commit (along with the question I saw about
> i.MX FB not showing the right colors) 2cc393f32fd9 needs to be reworked
> so that we default to enabling everything still but let boards opt out
> rather than forcing everyone to opt-in as it seems like there's a lot of
> cases where people need to opt-in and didn't know.

yes, I'll rework this.

--
Anatolij
