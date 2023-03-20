Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80DE8C7618A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 03:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9Qymv9USD/omO9iajx3OR3a9zguD5WrBjTNJJi+c+c=; b=It7cY2mIqfdJ7M
	IaGcv7/RmQRxZZF0DofvjO+nvbAJOxslp/9VT/tb2sCGvlKtyE5C/SZl2Ww+sp/crFFQdujEdFs6Q
	Sdalb84xrCDnDvtUyjdxMGH6i/WC/DvubphjsRozahBb6AZmQ795QRUpG+Qw0Se+xcBALUadntI/d
	s7npVWPcWIwVL9tdM2LFrXtoQk+VQrSFjXDLfY1LcOiJp4ly7S3bjBr19aYpSquP3qacZytDE8F7E
	mJAViMcO3WSFRDs0e5EUPfu8qKIVdA1S/a316GUtAcaDa9+UvNUcIrXYD+tLEyxA6a86TBBINdRqO
	dOEVQO4UidY21PVic2Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe6Ix-0080CR-2q;
	Mon, 20 Mar 2023 03:35:27 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe6Iu-0080BV-3C
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Mar 2023 03:35:26 +0000
Received: by mail-io1-xd2f.google.com with SMTP id h83so4864810iof.8
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Mar 2023 20:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679283319;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wmh00mSkc1yZ2kAYcG5WXSz9CKFnfDRzRtU77CPNAeQ=;
        b=Sk1UO0BqWbVIcFRSdIKFLrdgojmDr9n8S/t7QQnrDxW60QXNx502h+HUyE5wCjyQYw
         ns8iHl+9x6RMc5cjnuaNTaSCUFR2p8PhGP3ww+USCuZXwnAzAxLwBxA1vY752BU+wTcv
         b3Wp5bDsu/nkqDLcagS5kORn1ATxDCbvVMjdT4MRgum431NMuMjB5yNiFA/UcAx4vvqj
         RHmRGuFby0812mCsaZ4Vyiv+ertgCSy7mnh27I6eDEgUI6XX0Tqx2HqDMz6E5k1z/Ca4
         6zLBsxp7lAD/h3CyIYvRevjP53ibxjv5DU8DVdgGEHGnh5cBC8sncBAluLABS63a+3Un
         bfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679283319;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wmh00mSkc1yZ2kAYcG5WXSz9CKFnfDRzRtU77CPNAeQ=;
        b=A4PSFE7vu0e7oa8Q7KerL83KDc9hjiQkfhaqE5M6Y6UmX4dEdg/79p/XgXk2ql0Q5J
         fQc5W/KG2i/EWcE3BIF4sJDfJliJAKjzIx0+bZpvLTTHEOLfX1RDt4mFXH5ium1lwrCG
         AC2y9DowjUfRtzro/c9ogeF6vG8dT6WJm3M5icRrDCGnGUq5zYiPG9qBxAkeWbcA7CII
         OxvBa3rtRS8Qp54IHD/QquGUBCPwF+0iXXu36wlZRDSYQQSgXnS2HMLCZfC6I0Agx4Ty
         ikzHZbT0fVQQQqztsLQefq8axbSTKd4PP/gSElsu4AYO46bIBavKjowENouY5caUiTUC
         jzaw==
X-Gm-Message-State: AO0yUKWjVNZawjbMzycZCYN3qrR/CKhfMvUB6yDe0XvunizYXJGWNK+9
	m6nubq/BLcs5FeMJlzbkGF0=
X-Google-Smtp-Source: AK7set+BlDQo6auxxwphnPD+V6cZdPYewGRVL2C66NdtY01WQjeyEQFDE6hol0q6e9oU818n1R/k+g==
X-Received: by 2002:a6b:dd19:0:b0:753:ee63:3dc with SMTP id f25-20020a6bdd19000000b00753ee6303dcmr4487405ioc.20.1679283319602;
        Sun, 19 Mar 2023 20:35:19 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id z9-20020a056638214900b004063cfecdb8sm2690378jaj.113.2023.03.19.20.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 20:35:19 -0700 (PDT)
Date: Sun, 19 Mar 2023 20:35:17 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
	heiko@sntech.de, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	huangtao@rock-chips.com, william.wu@rock-chips.com,
	jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com,
	wmc@rock-chips.com
Subject: Re: [PATCH 4/4] usb: typec: tcpm: fix source caps may lost after
 soft reset
Message-ID: <7038030f-1d7a-4c91-a255-bec73847b7c9@roeck-us.net>
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
 <20230313025843.17162-5-frank.wang@rock-chips.com>
 <f5650fa4-db16-b1e4-f5b4-917fbcabb415@roeck-us.net>
 <867179bc-a21f-5479-f27f-2e17fc5a9a01@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <867179bc-a21f-5479-f27f-2e17fc5a9a01@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_203525_049788_82D3BE0C 
X-CRM114-Status: GOOD (  26.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Mar 20, 2023 at 10:38:35AM +0800, Frank Wang wrote:
> Hi Guenter,
> =

> On 2023/3/17 20:58, Guenter Roeck wrote:
> > On 3/12/23 19:58, Frank Wang wrote:
> > > Invoke set_pd_rx() may flush the RX FIFO of PD controller, so do
> > > set_pd_rx() before sending Soft Reset in case Source caps may be flus=
hed
> > > at debounce time between SOFT_RESET_SEND and SNK_WAIT_CAPABILITIES
> > > state.
> > > =

> > =

> > Isn't that a problem of the fusb302 driver that it flushes its buffers
> > unconditionally when its set_pd_rx() callback is called ?
> > =

> > Guenter
> > =

> =

> The story goes like this,=A0 the fusb302 notified SOFT_RESET completion to
> TCPM and began to receive the Source Caps automatically,
> TCPM got completion from fusb302 and changed state to SNK_WAIT_CAPABILITI=
ES
> and invoked set_pd_rx() callback. However, the
> fusb302 or TCPM's worker may be not scheduled in time, set_pd_rx() would =
be
> performed after the Source Caps packets had received
> into fusb302's FIFO, even after the GoodCRC (Source Caps) had be replied.
> =


Yes, but the fusb302 driver clears its fifo in the set_pd_rx() callback.
I see that as a problem in the fusb302 driver( it could clear its fifo when
it notifies the TCPM that soft reset is complete, for example), and I am
hesitant to work around that problem in the tcpm code.

Guenter

> So make forward set_pd_rx() process before PD_CTRL_SOFT_RESET sent at
> SOFT_RESET_SEND state can cleanup the context in our side
> and ensure the right PD commucation. I am not sure whether it is sensible?
> =

> BR.
> Frank
> =

> > > Without this patch, in PD charger stress test, the FUSB302 driver may
> > > occur the following exceptions in power negotiation stage.
> > > =

> > > [ ...]
> > > [ 4.512252] fusb302_irq_intn
> > > [ 4.512260] AMS SOFT_RESET_AMS finished
> > > [ 4.512269] state change SOFT_RESET_SEND ->SNK_WAIT_CAPABILITIES
> > > [rev3 NONE_AMS]
> > > [ 4.514511] pd :=3D on
> > > [ 4.514516] pending state change SNK_WAIT_CAPABILITIES
> > > ->HARD_RESET_SEND @ 310 ms [rev3 NONE_AMS]
> > > [ 4.515428] IRQ: 0x51, a: 0x00, b: 0x01, status0: 0x93
> > > [ 4.515431] IRQ: BC_LVL, handler pending
> > > [ 4.515435] IRQ: PD sent good CRC
> > > [ 4.516434] PD message header: 0
> > > [ 4.516437] PD message len: 0
> > > [ 4.516444] PD RX, header: 0x0 [1]
> > > =

> > > Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> > > ---
> > > =A0 drivers/usb/typec/tcpm/tcpm.c | 11 +++++++----
> > > =A0 1 file changed, 7 insertions(+), 4 deletions(-)
> > > =

> > > diff --git a/drivers/usb/typec/tcpm/tcpm.c
> > > b/drivers/usb/typec/tcpm/tcpm.c
> > > index 9e583060e64fc..ba6bf71838eed 100644
> > > --- a/drivers/usb/typec/tcpm/tcpm.c
> > > +++ b/drivers/usb/typec/tcpm/tcpm.c
> > > @@ -4321,10 +4321,12 @@ static void run_state_machine(struct
> > > tcpm_port *port)
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 tcpm_set_state(port, unattached_state(por=
t), 0);
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
> > > =A0=A0=A0=A0=A0 case SNK_WAIT_CAPABILITIES:
> > > -=A0=A0=A0=A0=A0=A0=A0 ret =3D port->tcpc->set_pd_rx(port->tcpc, true=
);
> > > -=A0=A0=A0=A0=A0=A0=A0 if (ret < 0) {
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tcpm_set_state(port, SNK_READY, 0);
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0=A0=A0=A0=A0 if (port->prev_state !=3D SOFT_RESET_SEND) {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D port->tcpc->set_pd_rx(port=
->tcpc, true);
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ret < 0) {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tcpm_set_state(port, S=
NK_READY, 0);
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 /*
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 * If VBUS has never been low, and we t=
ime out waiting
> > > @@ -4603,6 +4605,7 @@ static void run_state_machine(struct tcpm_port
> > > *port)
> > > =A0=A0=A0=A0=A0 case SOFT_RESET_SEND:
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 port->message_id =3D 0;
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 port->rx_msgid =3D -1;
> > > +=A0=A0=A0=A0=A0=A0=A0 port->tcpc->set_pd_rx(port->tcpc, true);
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 if (tcpm_pd_send_control(port, PD_CTRL_SO=
FT_RESET))
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tcpm_set_state_cond(port, har=
d_reset_state(port), 0);
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 else
> > =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
