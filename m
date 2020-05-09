From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: Re: [PATCH v0 1/1] spi: spi-rockchip: add support for spi slave_mode
Date: Sat, 9 May 2020 17:11:04 +0800
Message-ID: <fdd18c31-f97c-e31f-8056-f4affbdb519b@gtsys.com.hk>
References: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
 <20200508083729.5560-2-chris.ruehl@gtsys.com.hk>
 <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Emil Renner Berthing <emil.renner.berthing@gmail.com>
Cc: Jack Lo <jack.lo@gtsys.com.hk>, Heiko Stuebner <heiko@sntech.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Brown <broonie@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Emil,


>> +       if (rs->slavemode)

here is a mistake  it is :  rs->slave_mode
and the use of rs->slave_mode in the rockchip_spi_config()
