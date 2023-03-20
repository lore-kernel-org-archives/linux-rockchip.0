Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB8BAC7618A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 14:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5XdZ80qNrLhpVNgbQcwkoXRs7cvqIM/xVV4ADm0keQ=; b=DBOgWNXwa1SDuU
	rHIARMUseSWdnRhiKiGzawi6VeKbT1OFKLUGsJZSF3iVCCyZWpf4/ctpjW7KX3DVbHPC8EWmgD1Q8
	YGkms90Zv8pquUNA1/gE5wYFYRHUAaYTzGFLBKI7s6OG1SayF/APOVgXFdIb83huspUeaEygzrpuZ
	OhgYnQQzd3CibrgyeiBu9Q9kj3r66qWSBuumVQP+Gw/6T+Ia6Z07GDaX7ecjp84inDWEQ5/bFR9ap
	GHKdfbE2wW5AVujj0W1Lrd8nE+SUAqFmlyxSKT6TB75gI6KTa0aJ585Nt42/npuZDO5ETCMFHiGLS
	QU7cUW0oeLIkwLjZeQ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peGdv-009LZj-1r;
	Mon, 20 Mar 2023 14:37:47 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peGdq-009LXU-1Y;
	Mon, 20 Mar 2023 14:37:46 +0000
Received: by mail-ed1-x533.google.com with SMTP id t5so10809791edd.7;
        Mon, 20 Mar 2023 07:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679323058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ah+O3agW2G50K8T4sY9tg2Yu5T7tjCj76ax5y4SpCcs=;
        b=Qi7D8nCCoE/MNAFXpIMX/dVQnOeD0XwI9K5TWQpV/Fv5/fiSm5p80nvXFApIOG0MJX
         eYQQRmsal4nqmc4yfTlh0+1geRW3SnxlT/R6MIyLX/y7nuO9HanGC1hqRDQd0WlijYHX
         LxM1KbVfTgcTHrmwHWmA0B/0r/4mXe1hiDoKOSWyLv8MrpFc38QVK7CBwlJqNUZP5hbP
         NVQArP7GfomwTqZexgbxhhGWN5AI/LOvIpac6Ogt4vj9IelAe3vQzz3UUL5FjvAl2V2Y
         EWxPIk3TktB2Cj8qYY+C2+XEb6nrQZ51XKwVw/o2cHs+YpMKXdQxhWLBA3+kbdZiHkjO
         wuBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679323058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ah+O3agW2G50K8T4sY9tg2Yu5T7tjCj76ax5y4SpCcs=;
        b=BocqzGIdtCUtijT0jG13Q/RmBPnN79Z75pvEhmre3dChkpuKBepQ7GRYal5C5F222y
         o4AIoIQxq2vk8WJ5e8KQ9jzzoOjG5XfE1hvJhKVLR2KfRPfRsSYwDZiecDhBMKGQ1uZZ
         eTlkuSVbUsAboDDHKYAMZlamTTJ0FRjCwJVPhioT6aP5E5xJVEuEn9r1Mgwh+GH2f9GG
         8B6JCq3LbQ/w+urUotPaVgvR5WovNS7lFKczONwEEGseso57vsHs9wKipFR1ouQQhtqF
         SU/cXEz1uuY1bFt9tkx7woKRiqVRcl24+ywloHYnIhiYc8qkrm0Gq2zLn5tHMyWSYhch
         RJKw==
X-Gm-Message-State: AO0yUKXY9G50EfxhS9NjlUBqNfAwI5ItP7G6cOC8cj9F2u1zTP4x3wZg
	6L7HvSS9aBdmCK3zA6iRrueOHWxGl6c=
X-Google-Smtp-Source: AK7set8n5TdTbmrmysoNrtgjV9F19hLjW/bhqosdK5yts38DjEvep0fW6DGuAsawSYNx5tILQSY07g==
X-Received: by 2002:aa7:c855:0:b0:500:4a5d:af41 with SMTP id g21-20020aa7c855000000b005004a5daf41mr9763795edt.25.1679323058105;
        Mon, 20 Mar 2023 07:37:38 -0700 (PDT)
Received: from archbox.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id v2-20020a170906292200b009321cd80e15sm4136198ejd.73.2023.03.20.07.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 07:37:37 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [RFC 0/2] VP8 stateless V4L2 encoding uAPI + driver
Date: Mon, 20 Mar 2023 15:37:36 +0100
Message-ID: <2153569.irdbgypaU6@archbox>
In-Reply-To: <b6468072-834b-c948-3a27-e34fc80d203f@collabora.com>
References:  <20230309125651.23911-1-andrzej.p@collabora.com> <4586871.LvFx2qVVIh@archbox>
 <b6468072-834b-c948-3a27-e34fc80d203f@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_073742_518926_EFFD71B7 
X-CRM114-Status: GOOD (  19.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Monday, 20 March 2023 11:07:19 CET Andrzej Pietrasiewicz wrote:
> Hi Nicolas,
> 
> 
> W dniu 18.03.2023 o 10:20, Nicolas Frattaroli pisze:
> > On a related side note, since I let this run all night with different
> > parameters I can happily report that it seems to be quite stable, no
> > problems encountered at all.
> 
> Thank you for reporting. In the (expected) case this turns into a
> patchset proper I would kindly ask for your Tested-by then.

Will do, I'll be closely tracking this patchset and might also throw
a patch your way to enable it on RK356x at some point, since that has
the same Hantro encode IP as well as far as I know.

> Can you share what you used for the nightly tests, both in terms of
> testing harness and unencoded video material?

The source material I used is the "Original" quality of the short film
"Wanderers" by Erik Wernquist: https://vimeo.com/108650530

You can click on "Download" and choose "Original" from there, which
gives you a 4:2:2 10-bit Apple ProRes .mov file. It's quite high
quality and includes some interesting segments, such as the asteroid
field shot, as well as plenty of grain, both of which really stress an 
encoder.

My testing harness is a little primitive, the precise gst pipeline I
used is in this command I ran:

for i in {0..63}; do echo "q $i"; \
gst-launch-1.0 filesrc location=~/Wanderers.mov ! \
qtdemux name=demux demux.video_0 ! decodebin ! videoconvert ! \
v4l2slvp8enc min-quality=$i max-quality=$i ! queue ! matroskamux ! \
filesink location="/mnt/usb/w2/vp8_wanderers_q_$i.mkv"; done

I figured I'd try out all the quantiser levels this way. It is worth
noting that the resultant mkv files are somewhat odd, I had to remux
them with ffmpeg (with -c:v copy to copy the vp8 bitstream over) to
get mpv to seek properly in them and show bitrate information in the
stats overlay (shift+i by default). There's probably a gstreamer
thing I'm unaware of to make it properly generate the matroska
container as well. Either way, not a problem with the encoder, just
the muxer.

I'm pretty sure videoconvert gets rid of the 4:2:2-ness and 10-bit-ness
of it, since I don't think this hardware encoder is capable of handling
that, which is fine by me.

However, since this does nicely transcode to a 10-bit video with a
software encoder of your choice, Collabora might also be interested
in using this footage for any upcoming 10-bit patches to the video
decode side of things. :)

> Regards,
> 
> Andrzej

Kind regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
