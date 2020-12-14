Return-Path: <SRS0=K/hu=FS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22ED6C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 11:03:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD75B206FB
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 11:03:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD75B206FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PBJltFvTDjZPf3iczd/DrouLsxiBc6VwT1BNwtTCpZU=; b=Biej07uoW16nNzcEmCPG+gGRVc
	YFgn7+TTEkBPYdebQMeNdHs2z4dGZVQxQHfnfOMRWt9f9Dw0lcPr1ZP64lQMNelGoBubktlut0t6l
	9Vo/M3gXN/PaAj9aGO6O+CfcPRe2IUnPtXWI+15KbvnuqNU/ElStX5frbgjBRN0nzDRBd5pGQy+Ce
	nyLcrFxraYS/q++A9AL24HNQGdV3n85cbZIRgn45OCNyDaP7SD3fVxBHVThMHzUXIGiOdxpuWKtBV
	KDbUTe3bhzcf/5VIUROJvWFkvC1jXeDiyvM/bk5fw00XEZYNrUJIJUzezs5pDqhRACIme1Wy60+1E
	1agvma+w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koldm-0000DO-Ka; Mon, 14 Dec 2020 11:03:42 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koldk-0000Cs-RV
 for linux-rockchip@lists.infradead.org; Mon, 14 Dec 2020 11:03:41 +0000
Received: by mail-io1-xd41.google.com with SMTP id z136so16475408iof.3
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Dec 2020 03:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=3evjQtuLZ++eIrou/VieOpcjEYW463jW8lrXR5dRrPw=;
 b=i8nJBVUXUlMnKzS/x21t1/IfwAlV5ib/ekh6mlooSwpa31JFgb5+HUBrpWHNAaSTj9
 vdZwLQ+mCOXfZegpX0aFi191TP1Td8yrM4knTrOkCB8a1wqrgYXjQYtU/v+oaU2ea87d
 2Tmgl0AckjwDixKnc8pAJRsp1+DGxNdsQQ7Cxv7D6vGGx5Sk/blB7lApdYuVrLu0sz1i
 il3TCmnNV5nnnfriZIKYqPFQ6FpxA22Rjx3TuSypCiP6w1/lNnrbvh+V0G2jT+f31V8G
 hQ+J/URhSCEw6lylKgf3t4XTP2I6e667J73SjWaJVcFm+baR6TCnNPaEW6cYTry0v3+T
 PjrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=3evjQtuLZ++eIrou/VieOpcjEYW463jW8lrXR5dRrPw=;
 b=AYYOEuok08V3dzCjJ41jtQsrd4sHWacCM+jcd5C5oJOmMslrUtllYT1XDAGcM181es
 K9bJOFOmyuRuO21uxyhtl4ld2NzybtItvoWZt5opFV5wTvP86DVXi4OjoS08yKCnn8wp
 2wyD64xoE7HDBiha9uI27K3ac4SLBO58ITrTXFwqSge26K3DvaPusFmSpL3symLV00JZ
 VNgTRU74cQ+IYPOumLhQJYgB7FuXomrAqVqNrGy06m2Wp5/MjRh5J8aJ7sHihq6IRBcf
 gWLCGMWuAEPyfu9DRRDSDTh5/fy6SjFPlTWGz9bIOn3VDmqRTl+VSBYmypGvZpDfUrrw
 nHmw==
X-Gm-Message-State: AOAM531MO9N4nBRz+G7d+a/Mzyk8FKbzxJ0sW2mO50Ob5BptJl/AlTYS
 wFPVldDn88DqXzkHoLUMzneSbVx4ZkOefrBCEM8=
X-Google-Smtp-Source: ABdhPJyznmZxPQTTSSm6SdFlF//chuHdUeJvgNYUeg6cY24xt92set3t5SCNV6MHgMvIRqu6VgiWLvVnOM1QPVdpqPc=
X-Received: by 2002:a6b:2c52:: with SMTP id s79mr31401596ios.53.1607943817885; 
 Mon, 14 Dec 2020 03:03:37 -0800 (PST)
MIME-Version: 1.0
References: <20201201160613.1419-1-vicencb@gmail.com>
In-Reply-To: <20201201160613.1419-1-vicencb@gmail.com>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 14 Dec 2020 12:03:26 +0100
Message-ID: <CAAMcf8B9HNkZie6nbkBugcteJOLUhWhHVhjKxkH1sPrTU4k+xw@mail.gmail.com>
Subject: Re: [PATCH v3] drm: rockchip: hdmi: enable higher resolutions than FHD
To: Robin Murphy <robin.murphy@arm.com>, Jonas Karlman <jonas@kwiboo.se>, 
 Douglas Anderson <dianders@chromium.org>, crj <algea.cao@rock-chips.com>, 
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201214_060340_924752_DEB02117 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Dec 1, 2020 at 5:06 PM Vicente Bergas <vicencb@gmail.com> wrote:
> This patch enables a QHD HDMI monitor to work at native resolution.

Please, anybody?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
