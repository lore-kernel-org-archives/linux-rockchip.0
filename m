From: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 3/3] phy: rockchip-inno-usb2: Set EXTCON_USB when
 EXTCON_CHG_USB_SDP was set
Date: Thu, 12 Jan 2017 13:48:16 +0530
Message-ID: <58773BC8.2050808@ti.com>
References: <7b9836ce2ca34118a2acd1ea113605a5f13b4439.1482307697.git.baolin.wang@linaro.org>
 <23666cc1a5ff123ece5bdbb9821d1eab280d0927.1482307697.git.baolin.wang@linaro.org>
 <CAMz4kuJP9Q7Ly4uRBjCFU32YzbVbnsGyk+wHc+M=g8W=uDBsEQ@mail.gmail.com>
 <CAMz4ku+X8v2HH5L_fS60naNTqR1ZFKYeWuXuHqjg0UsHQq1dsQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CAMz4ku+X8v2HH5L_fS60naNTqR1ZFKYeWuXuHqjg0UsHQq1dsQ@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Baolin Wang <baolin.wang@linaro.org>, myungjoo.ham@samsung.com, =?UTF-8?B?7LWc7LCs7Jqw?= <cw00.choi@samsung.com>, Chen-Yu Tsai <wens@csie.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Linaro Kernel Mailman List <linaro-kernel@lists.linaro.org>, LKML <linux-kernel@vger.kernel.org>, NeilBrown <neilb@suse.com>, linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thursday 12 January 2017 12:13 PM, Baolin Wang wrote:
> On 3 January 2017 at 13:54, Baolin Wang <baolin.wang@linaro.org> wrote:
>> Hi Kison and Heiko,
>>
>> On 21 December 2016 at 16:12, Baolin Wang <baolin.wang@linaro.org> wrote:
>>> According to the documentation, we should set the EXTCON_USB when
>>> one SDP charger connector was reported.
>>>
>>> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
>>> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
>>
>> Could you apply this patch if there are no other comments? Thanks.

Does it fix something? Or else it can go in the next merge window.

Thanks
Kishon
