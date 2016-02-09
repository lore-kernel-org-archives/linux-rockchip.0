From: "Herrero, Gregory" <gregory.herrero@intel.com>
Subject: Re: [PATCH v6 17/22] usb: dwc2: host: Manage frame nums better in
 scheduler
Date: Tue, 9 Feb 2016 10:53:41 +0100
Message-ID: <20160209095341.GA12324@herrerog>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
 <1454034013-24657-18-git-send-email-dianders@chromium.org>
 <CAD=FV=XzhreQ2RTWN2bj-P1Lz4unc46SvJZuK-KZDA++CvFe1Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=XzhreQ2RTWN2bj-P1Lz4unc46SvJZuK-KZDA++CvFe1Q@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Kever Yang <kever.yang@rock-chips.com>, =?utf-8?B?5ZC06Imv5bOw?= <william.wu@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Stefan Wahren <stefan.wahren@i2se.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-rpi-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Alan Stern <stern@rowland.harvard.edu>, Ming Lei <ming.lei@canonical.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

> Hi,
> 
> On Thu, Jan 28, 2016 at 6:20 PM, Douglas Anderson <dianders@chromium.org> wrote:
> >  static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
> >                          struct dwc2_hcd_urb *urb)
> >  {
> > @@ -569,11 +655,6 @@ static void dwc2_qh_init(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
> >                               qh->ep_type == USB_ENDPOINT_XFER_ISOC,
> >                               bytecount));
> >
> > -               /* Ensure frame_number corresponds to the reality */
> > -               hsotg->frame_number = dwc2_hcd_get_frame_number(hsotg);
> 
> In reviewing patches I realized that this is actually a revert of
> commit dd81dd7c8178 ("usb: dwc2: host: use correct frame number during
> qh init").  IMHO that patch was wrong: hsotg->frame_number is supposed
> to be the frame number as of the last start of frame.  If we need to
> know a more recent frame number then we should query it ourselves.
> 
> Presumably the reason for the original patch was to try to fix some of
> the same problems I've addressed in my series, so I'd presume that
> this doesn't add any new regressions.  I haven't heard much from
> Gregory Herrero about my series, but it would be nice to confirm that
> this virtual revert wasn't causing problems.
> 

This patch ("usb: dwc2: host: use correct frame number during qh init")
is no more needed with your patchset.
Note that your patchset is also reverting commit 08c4ffc:
("usb: dwc2: host: reset frame number after suspend")
but it is no more needed as well with your patchset.

I tried suspend/resume with different devices and didn't face the issue
my previous commit was fixing.

Regards,
Gregory
