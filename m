Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CC7DC282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 10:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9HKHVIc0oeD4vAtD2JXMbM5OS+CdXUNR6Amjk8gxic=; b=Gy5HN83Q/jlTHc
	LULU2baQpXx0FRpru4BZwIDcL4miDfoz7jVw0xeefYg6Lr2OjCuoX9e99UlnXQ6+ltbRF8ZIkAnC3
	HVoOyQ23hvzL1sjjtn4UVkTgQ8BXfCEfXE7482zDoMJ+Ck4k2f2sO/jnlAH1thdK9Ef7+ad4r8NPl
	RU9Nk1TeFgJ4EPmZoiewwOC0eEtvGl39t5+hZAwO6bIYwDj/GT/Z2xSNBWA+rOTMIzXfK7vQOe7IE
	wCz0uGa34Yf8rzTOFFj+hXxfjjlqDdUK2eH3Pap/cEXSrgOmr9RayukSxeHhCIEwNIHtwICI7dQSg
	QErJZFhAD11HxTMWWqpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDiF-00000000LCr-3imO;
	Sun, 09 Mar 2025 10:16:51 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDe5-00000000Knu-2M04
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 10:12:35 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-6fb2a0e4125so22567737b3.1
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 03:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741515152; x=1742119952; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a3pmPX9mi3l6MtSftgTcp61DrI1vlvr8C0D0WUCrKDw=;
        b=vXJP7MLUQgJ/8H8FqdQkZGtbM70l8YABW2KywrL/8z/kILiVe3yflBKckD4hKz8CL2
         vUxL2Pd/5hoeIwB7TJPrS4uwEET3WFx9ylx1Nce/TJlJZBt+lS5wWZ6pnvYX/Z2vIpXU
         9YZ1e1VMcANYoMfvsXOFRQbFS89IejmrpqzHaTLLKwcMVkiKFaXYMNM3lLC9ooeDlxku
         apl/JZrp33xro2VmlGLlCAnJGZDqJLUXOTIbx2NGDaxgWtBOJCFcer4zV2HbUD8uc+1S
         7JXNbuWmSqugbjjXLqrFL3+qC5IxM1P/7QqHT5IXkOXFmvvP/KvOyXIbqTGaK7hgeZGk
         v4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741515152; x=1742119952;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a3pmPX9mi3l6MtSftgTcp61DrI1vlvr8C0D0WUCrKDw=;
        b=c9GJBWMT7ZXyUzdvPUuTWb0ZW3rE3xg6IqXAHM9ZsCepBE4i1nw11SxKWw/Qxm56GU
         9/RXZbf69/kNdnTStif9giXRdRJEcjbfV371HJ3CzaC2eFZOZwY+Kt6dM+ceUHq/5ljU
         tYu7nJPVs2g0MUkY8HWjYRRNopwncLxsDP0JqouP5C22tzuzEJU2n4dlIxERMhTkituh
         uinC6ddOw8NeRWmalS9ZdV+IGTqubGSlS9NQ8hGKenLMm8SyBplhDPj8HSLCABPBGnlz
         oOop3VxwSyksBIh4osGyzk1xjXULSCoizfiFba/szxR352XPUUt/LHQ+ry5CnytsFTpQ
         Es0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUP/51HDqEYgCKnxr+rSQEXEWGHgEkXmWZM7swEN5zjjW9yXtvsXEXLlCMI2BEw95KNwEy1b5JlQxnroLPd1A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyw+pM/bqHKYFXb9Fa6XdGKYrq0t6hbgobCubSZs7FLllMeEigc
	WIph2yi19M4gTzrzz+biokWq7vs6EgMDPl++5Gx2sji6skLIWVohr+YnG0dopXIb0NAZJ7U8XIg
	9FU5edwBui4BRu4w/TRsC3vkpgcwpTfLnP0hGyQ==
X-Gm-Gg: ASbGncvYtAHYiYrPg4DiOPUFMVPPrExcY07VB4y6avpSRHJxLa1PdHsjMrmwxhKS+h6
	7XCfSjQmAjRB/oGpL3MxWttgc2oFh5Km1i0e9O5ND3kEX33nHE35bAh00wJUTVFN5dFGcumpx3x
	uH5Xd9t651X9evn8LUVEBTIGjeydDGzyiZgIVTldI/
X-Google-Smtp-Source: AGHT+IEZFS8P/SqBnB+WkQtnz50kE/KLVe8z1PUmhj0XLEUm9sUtkaGVMLjPe61piys4lVxnrSqV5nhPuLtN0bbXmko=
X-Received: by 2002:a05:690c:3386:b0:6fd:6589:7957 with SMTP id
 00721157ae682-6febf3e141amr139728327b3.32.1741515152574; Sun, 09 Mar 2025
 03:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
 <20250308-phy-sam-hdptx-bpc-v5-3-35087287f9d1@collabora.com>
 <CAA8EJprBcGz0tZ5SDVC_WK2bzjXZAtOj+LfGnSxmwktvaQw=VQ@mail.gmail.com> <f1e33b02-5646-4219-98ac-c09e31d8215b@collabora.com>
In-Reply-To: <f1e33b02-5646-4219-98ac-c09e31d8215b@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 12:12:21 +0200
X-Gm-Features: AQ5f1JrmwkN2RQ2GrRt72vVxlzBhDHQIaChvycTVxwU7KB8WVuxJ3KFj7BXSb9I
Message-ID: <CAA8EJprNTUuOwu__GcRhYmNi5rT0+3r16fs+n7Gdy3sjgTp+nw@mail.gmail.com>
Subject: Re: [PATCH v5 03/12] phy: rockchip: samsung-hdptx: Fix clock ratio setup
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_031233_612411_50D6A37F 
X-CRM114-Status: GOOD (  13.76  )
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

On Sun, 9 Mar 2025 at 12:11, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> On 3/9/25 11:17 AM, Dmitry Baryshkov wrote:
> > On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
> > <cristian.ciocaltea@collabora.com> wrote:
> >>
> >> The switch from 1/10 to 1/40 clock ratio must happen when exceeding the
> >> 340 MHz rate limit of HDMI 1.4, i.e. when entering the HDMI 2.0 domain,
> >> and not before.
> >
> > Am I correct that the only functional change is a switch from
> > greater-or-equal to simple greater?
>
> Yes.

If you were to repost the series for any reason, could you please
spell that explicitly in the commit message. If not, it's fine.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
