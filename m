Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97D3FC282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 09:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9q7bpYvIs4xsiLVpFblfm5wGili5KZFGH9cLw/k3a7w=; b=pZ5lu9YGQia94U
	pD37+2hdh1y31Hx8dq+dqypRc/U/SXtx1ZVpI9q+mSSoxu3NV5Q9fS8jcEiP/T/LRqwWDZinzEFgW
	mUmmtmspzRzRnL3WCEZSLK+hrivcAbq6vuXi6QPHnaOJ0D9YwHBT3ePMbMG+5pauHJx6W3O3xRI8P
	+MxuNddx/d3BHJlVzb7TmUEXPpK/PB6/JQZuS0zCN09llV5QW/EvI+EcqTFFJeZdcURolG3i3HM0e
	480HV8jO+EkUp+Ez3+Ml9QIL8nvrJ3v9c3s8HmRbhLQ6V2fCMHTuGPmp7yMNE+e6Bs13LvF06IJu7
	GmptiafThDNuV6Cqs98A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCzR-00000000HsA-0a8H;
	Sun, 09 Mar 2025 09:30:33 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCwB-00000000Hat-48G7
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 09:27:13 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-e636585c375so1351201276.1
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 01:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741512431; x=1742117231; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8MzFqTYg/ttLX5uoaIbZhu+X3rO/zERjBLQIlgSQny4=;
        b=dOxa4arFWnUgO1W63EWsD3XJi7Hp09q8UEmKFVVAcgzkqP2VcmVumuXowPsGZ/ewzj
         8JR+SBGefY6r3oVw1ASQKCB9Q7Dj50WcHs/TaN8l8Obm+dDrb2eL5R09AY/iTTJCghXV
         r0ckT0FjOfhJmG69fyeEF9tfKFL8I196GqMjB9gjP7PJNRgUt9q028oLRXpJGGYeh9Iv
         w0pn7+trws+5F1zjbbOoas9SCl40yaxtjTIBCZMaE6l3A+8eicM7Gt+Cq84Pcc9uv0+C
         Kx4W2cVMoJfhiMvs0MtXfY+1aLOIGZFTo2C67kmWTo39JINWGm/8VQ18UhaoaU5a75fA
         xWxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741512431; x=1742117231;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8MzFqTYg/ttLX5uoaIbZhu+X3rO/zERjBLQIlgSQny4=;
        b=YEDHJb0yJH6xBZWOplqheiKBdSKEV9oJ6ZW5NuplLlkXPGoxF8QWgvurlIYmr40DaU
         ZGSTFOGo30gAvuzI4KqVOIZf0fzLyWwXkjwwGrGF32UQR8t0Zb+aLGDlIvyGVhyhxq1n
         1HZhsH5d1DcrNhzsi9skui0ZhzjyudaoU2WlUu2O3GaTUp3cRaeT6HQ4oblwGy6SRez3
         Jocf40+5RgdVKU2RplkxhoVs+DTtrJiGqL+5lGfU9zstE8vWAypBcpg/3+1EkrblYyLa
         EGLcGhDu4hAGpxpWB6uGUGxF5qVLoKNBjsV+LlD0Dl0A9I948od5fCwFKSmoz/8FIcib
         jVqA==
X-Forwarded-Encrypted: i=1; AJvYcCVMGlekmXwJodcVVvmRS2edQ1j4pRFOvibwy+OI2IPoER/htXf2/oD6D6xVw+C8x0YtCE2X8tpmG7HSccyY/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3OdTbM74YlesPJAKv/6ERNhnyW4CcpqDs5WkVuSlKuWaq3u52
	oG5K07LR8lren7EzdFvFcQHLPfz2mImU1Cu3+lhComSnMo5pvLbtolCxcX6fFCGpU/WF+rGBNIU
	QDx4cOz0RmdQXqbg4ulobjpvxoS+NxVgm4VTohA==
X-Gm-Gg: ASbGncs6ayu5cyeg21lGn8lptxnOclA14zW+jcuN8ZCMwukZ4rCTQvjrl08iKuT3gbe
	RPvIo6140N8NZOgY3HJhjJEd4T/8h5Le+B8HSQ2KsbsNiCxN0DeRNVT0v/O1NGhDk+yycxcBhIG
	gRMENcreACrBRgHrnLb/2tAGHwXWWBTpxlB4gyymx4
X-Google-Smtp-Source: AGHT+IFA76leXty/jcWXJzC9DDrnbvcXI51BQa5AVFEVNQnlG4hIa3hv03b3Pkk5R9S7knKinfGf9iLV/UMM6mz9Jyk=
X-Received: by 2002:a05:6902:110b:b0:e63:326a:3acb with SMTP id
 3f1490d57ef6-e635c1e4bdbmr10097346276.40.1741512431172; Sun, 09 Mar 2025
 01:27:11 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-9-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-9-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:27:00 +0200
X-Gm-Features: AQ5f1Jr0o-mNk31NaHNXGWXnai6sEVvAhCvxPdtXNqLeXppZC3-JsMDZY-z7vX4
Message-ID: <CAA8EJpoCMp1Hk7K=OTgR8BW=tncRFTYBKndw9UG-rS3JYyO3gg@mail.gmail.com>
Subject: Re: [PATCH v5 09/12] phy: rockchip: samsung-hdptx: Provide config
 params validation support
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_012712_020834_B7F71546 
X-CRM114-Status: UNSURE (   7.76  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Implement the phy_ops.validate() callback to allow checking the PHY
> configuration parameters without actually applying them.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
