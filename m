Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 581D2CD98C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 17:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mDyqEy7SEn3n73odDqBQ3l/QS5cmz3Ri2XMza+u+KY=; b=uVuGW1UOx1/eB4
	gxSe98XXNyJ2Y/BB30ilAjPGAh40zAiz/HZDHAeu9qxDFKzXRBjUQsHqujUkL95mPeSoV4bX468hB
	J5SepYDLkaGTVIS9T6vtE1vIJ7Q6MdqLlK8+ugHvv75lSmgDyJGPV3/hqKWU8u6oRbAffUfjtPy6w
	qjDkPoJ5AiOvXSLCSrg5BWIJBI5mgxBZFQj32/ADOhs0ED+NXtQ4680fp1TpritGudv6W8fHVqOF0
	1hQIMxoNykxDnxfXC0Zhb/c325qf2EQ+FJUZvvf8o36rC3yOLUPABKNwSAW/yLDhMhT2FHG04LL67
	aMmvIjzPjv5YtuGG7u1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXizB-00000009oMT-1sE5;
	Thu, 11 Jun 2026 17:14:33 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXiz9-00000009oLq-1ZFA
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 17:14:32 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-7e8833c99fcso806897b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 10:14:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781198069; cv=none;
        d=google.com; s=arc-20240605;
        b=TJo/11KBwjFpmAvxSWke7sG06zgsH6x/uxa4TiYU606nwOD927o71C8z/IWTAXfFU7
         QRBzILAEWu60zIqGM7jb/GRSFOL56JyytUmV+U7+NK6zCeKzcXiHP5og6OwbIx4y5aLn
         XjeVTeLKrgVYILuUkNObhvL/2Up6TR9C8+wavcAzgHa7o1W7SnW3o4L+YiGOKiz9CQhe
         TmGVyzlOG+W1fNNvrB2wK42pLce8LZXamrRezDar3wVhSe2MJWyrnzLHllFRu9mEZ3UG
         GAjD+ZesJhogcgXbuYOFZoLQBuO0LVb/UWup7YVXE7E96KIAFMj1VO3hvXysn2GAh4go
         u31A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eA7yRXvTEh8fNrCRO00h2bUBzADrGeYwcxZYdic1EgQ=;
        fh=mze91vM4+ftlex5So+dcTe7VhmGQEtyFCvMYlZT0m9U=;
        b=S3P3+nQPNjLK3KQaqPSzbGo70ILNhdTdZ+YUe0JMzGSS4vl5Bwz0ecDHw6eSwZEzNY
         Z3sTBuUA3j/gl3OcT1R1GgFr/vWcjqk9Ac3/3Hxj+Um+guQJ8VpsLt54C74+OuQKLoKR
         2B3x6wOOGe1BXMFuBisCiGt5z5YOQV9kpHjPAZpdMZz5v9JoAOt4/+Dkcpebm5q/Hzc2
         T1K8E4tWl+vjAxkhkN3wtezcBx/BYAFDVIyiy0dJu0TTEqROg+EaDjjJ4kmejUpwKsy9
         JusD5rZgQi5uydCDDMRiseot3F4JJK1fiZgPGJK8qRi1guErtmNd/a4cgKEYsIN+W+Q6
         gGYQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1781198069; x=1781802869; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eA7yRXvTEh8fNrCRO00h2bUBzADrGeYwcxZYdic1EgQ=;
        b=NaomlR6+8nI1SKftRqzo+Ky8iHS9ojyiRINjFIBPu3dnLQuBjFbjoODXR9Tk/4oxeP
         /r4EjwBvETOt6aIF3sl3nT9gMOj3vJwrFuB4aWQB0bNgiQAxuoRPTNR9ZMNKSqndEfWb
         B4Oi83MBgEOlv+pEnlctWUWotYoNXZyHlCNRVC/ScH+sDitTchRr012NoxrBVLxjB4Nt
         4gGqGXKy2goPrIL1qfl3DE0P23sveEwGkf3a/mkUl6ZjpBZ+benEQCpi83RzSmYD7BJl
         wgDELd5wqLyn3cGtwTtJ0XtEQ7Xg7v6nUe5wu+ZvpcTovlFZx8aCH+VrgQW+a28UZgXi
         btAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781198069; x=1781802869;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eA7yRXvTEh8fNrCRO00h2bUBzADrGeYwcxZYdic1EgQ=;
        b=s397Zfx+1ragDqorwjgq684Fdiso/1tUx3tErHmRBffGxkpQ8E6yYqSYfUuXPr+5LH
         1vM9WDRwzU9T/CTjafON1R4XfWM9ar6QtDUw0tomi1kfObmPkwB1z0LF4wtjL58Gj6OC
         n9R2LszIm5J/NSUXJ0cbYxYSxV06s0OXJScsn1GVA1t1Rd+0IkoTvpUSfyd9P0DA0cfT
         p7npioDWH2tXWdnSRtiK91DfbtPn2HVElX0IRxdbYhnsMc/5qfZcPieZayEqyg33NBcm
         3Sk6PoK2p/+wt8UU8YRosnXEBl96IBJxo3VTqZh09I2elMqau5ZE1ryJV3bPTqW38du0
         nx5A==
X-Forwarded-Encrypted: i=1; AFNElJ9DzQdhnwJEq4VUew8xUj0z0Fv37AHL2sYT+tMzNhBvfRY8QT0vL9k7wJ/4AUh5TQtKPiWR78t2gEurDEVx1Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKDHPX4ze3YZ/R9AIHvbSsp59ITFPKeN6RREDWNmZOuQOcjXrU
	IinSDNLsNRzSVJRueZ+QvBgPcAbn0jDnBDV07d3ll3LzA5n6AfAfr4qafJ89JkBZq1e+tyHcBlF
	k/ctrvMwNIXfJk37Xn6o1pQVhVFvxuT8CKS4Tn0WlMQ==
X-Gm-Gg: Acq92OExt9lbSFvOmJcCChG+QwJ3wnW3NE9bdubgJ205MlwwrLWlhVVI629viGaBIbX
	KfFq2GnsywIid6cRuslFelUQPmz1WOjAL4p3BZ8bgY1HJyP84+lGXO1HunbStUIn6rjjz1BpJUv
	/UD6qDDYRjN3uzE/HdD/DOtTfpdnpXULiORlTu3KZmm731YVB8WkwolUVi/wKJMA67TtLnwGdYp
	4U/BqKT8C2+z/nMZyV7sUK/rmUnGeW9pCq4D3Lt3O/YiXPjgOZkxqo7pITkyPXtl8kwNy+JIoVL
	ECunbIDTueOWtAkw4FI0aZAVCpDFR6A4C1WIAfnm3QWFfNfLCAoiaFQIw6cT8h97dnyQvg9hKKh
	GyWyeFRO6i+1yVVtCAJrm9Bf4BHAhXyRa7y4=
X-Received: by 2002:a05:690c:660f:b0:7cf:f14e:bf5a with SMTP id
 00721157ae682-7f655cd3b81mr39665227b3.20.1781198069266; Thu, 11 Jun 2026
 10:14:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com> <20260602-dw-hdmi-qp-scramb-v7-24-445eb54ee1ed@collabora.com>
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-24-445eb54ee1ed@collabora.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 11 Jun 2026 18:14:11 +0100
X-Gm-Features: AVVi8CeUnQ0ZG_IBJrTt3afcxP7ht6E9ev0RCneHeSMnT7NSdu-xpfFzb1oLr80
Message-ID: <CAPY8ntDw9CSZgMzdDenHdv8ZN8Ho5JAhu1h8FXUiqLfxcVCWLQ@mail.gmail.com>
Subject: Re: [PATCH v7 24/30] drm/vc4: hdmi: Use common TMDS char rate constants
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>, 
	=?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_101431_433180_D38F0AB1 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
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

On Mon, 1 Jun 2026 at 23:45, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Replace HDMI_14_MAX_TMDS_CLK defined locally with
> HDMI_1_3_TMDS_CHAR_RATE_MAX_HZ provided by linux/hdmi.h.  Note this
> incorrectly referenced HDMI 1.4, as the 340 MHz maximum TMDS character
> rate was actually introduced in HDMI 1.3.
>
> Similarly, use HDMI_2_0_TMDS_CHAR_RATE_MAX_HZ instead of the 600000000
> magic number.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

> ---

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
