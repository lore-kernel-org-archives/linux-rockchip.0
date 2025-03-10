Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72493C282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 20:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKmwUD3O1tnIFTxtHBDunHlZ8s5HqNAl3vizXb/3oss=; b=EMOaUg4645pTDg
	Mc/9xrK+3es7KECvtXWoTqvjkt6PIpIYAObPOOeICchhfGxpDk4Wxzhg/bXOuLOfzBgcqsDr6Lztj
	gP0dA+cCjUBUO8TMXjcnsH0jvooDHhr0oX5K1wiWyM5Ybnr4QEsNIaqaHG5BecqZR+pIXxUvnTn/s
	aJNPkt+kjHI/Z0bdv6R4rGkJAADkO5OVM0CMqzws+fDvqzqGCZUADRr/IkJpzTIVee6j5/0/gARAu
	DKCeImsmMepl+fE5K7uHkt7zzLnAxlaM75WqteYsl17ZAOMZGG6Wtu6F4v0gFSbbqMOy9o/wsEzmW
	dWr1syT/xHuFHkbTjMmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trk8S-00000003vzY-1ktP;
	Mon, 10 Mar 2025 20:54:04 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trk5n-00000003vOD-0n1B
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Mar 2025 20:51:21 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-30797730cbdso49852951fa.3
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Mar 2025 13:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741639877; x=1742244677; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kxNF8e48hf51wGrFc06CsODYSc9fXYwI5IwZer2AB2U=;
        b=Rg1nkVXIqHPLHuo++bcuFZ3FDt0O9t+vBFK9q/gvQW0msVoVRrXTsQs104216WZVLt
         RxGiJzcrpHf5vaALiPgcxGlT2zPcwajTyZRUMCHseEfTLp4XGCy1eLCytAfKZJzMAeCv
         qTcIffUoMZUCSElHLsYB+ryiVpwpgG6dc+SJF5Wo684LLcDKe/94j/zYMCjK6qGuJnGD
         XOlQU9L86rS8PqL7R5m+Qgd5vU/a24j5m/N/wucavqTeZaw6qGXzjQKM9jvExqDXOvaT
         HZ+/Gd6SDJLAdj34XJAxxgWh6yaDDNIn0OiWers9KM1oDzTj/oIUHKlbHExk/Jxpb0nw
         iIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741639877; x=1742244677;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kxNF8e48hf51wGrFc06CsODYSc9fXYwI5IwZer2AB2U=;
        b=CHcL5UnvhEi2sJ6NxuPVQIJ2maGFBnBtlquV/rRMqKbeaPcP4xlPSIDuO+5fpKLhbG
         6o82bFm4WMxqusLmlhCAtaugJ262IjsyHOrEJtQOZSBVgypeNA+BLqjL2wG7uWgzwfSr
         ekZs3k+rx/Rr19ZvN1gANd4mEFcfEaGeltaXBBay95XSqLQIfumf+9ZmsJTu/aP/mPCV
         fQmDyASRQBJYQLhl4hh4Gs8MIoIAVw0jkmccXqtrFWO/MVluVSMwm8MDd3u6Yzjp19oE
         ZmHd591/JtxISMrlYHahmcD3kbKQtUppR+9Kg5LPJaN0w5ZuWFoeEMIcn/PzmETx5Zr9
         CbXQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5zlEUUgkgFv0zEz6ZoElEcqUET0Tbm4tMxrdiGNCzROJrdwM4qiTa0GBc3RbeCZeJnr7iL34fkPwNqVafOA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxe7A6gLlxHUcbpgxyaIgkqy7o99E2mXVeGNi8QAeHqtuMcyLSN
	tvTuOsfIJTYge3obcX7WWbpgNAEzG49lXhh6/jFvUMxv0Cg7ATf6hcdsV8qKj7g=
X-Gm-Gg: ASbGncsZ1pBF7mB5DmZH14m0RrNTtIPC6T4IG4QXQJfIClmQ9o6AYzJS0IHPVVbSunE
	/KBoaFTuqpJbq1a8z9BGqd7O153DehXEN6MyByIBq4AIrYEs32iCEzBSyK0IvAtH8dPt4sG09cq
	gl52AGAbNUP7Vu1RaVKCb6TTDVZFJxoXBJBGNFgUQ+guoFLkQL7iaYZXjQ30XQkIPE3eTFsYFfR
	Pnu5pcQUdrKo0/4D5UxuzyTXgqTqKZDhlvLYI7brewLsRnRh7TfoEs/Pa5KkBfI48Q2J+ijAWte
	JupLKrm8D/7LfJdQV3bCXNvOmpRR5asapIEb5o6SJaPfykZcuDMW3gUdw/CnKjW9AkjctgkD5dE
	T7Fz8WCcOHKMoJM8AAfnME5O/
X-Google-Smtp-Source: AGHT+IFPbDF/2E9yu0QkgjYjNcSbSQMHb9SKSyVgCW0jWJzt0rN/zgSyXWNMQzVNMXXx8FaEgf2kjw==
X-Received: by 2002:a2e:81a:0:b0:30c:12b8:fb76 with SMTP id 38308e7fff4ca-30c12b90187mr13907201fa.15.1741639877485;
        Mon, 10 Mar 2025 13:51:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be99e81cbsm17438501fa.93.2025.03.10.13.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 13:51:16 -0700 (PDT)
Date: Mon, 10 Mar 2025 22:51:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v8 06/13] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <mz7qmjokw4b3zk4y2u45ykzgtgqpsu6f53pflhqodyjd6svvvk@7jzggqezbubl>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
 <20250310104114.2608063-7-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310104114.2608063-7-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_135119_233080_76F5B0D3 
X-CRM114-Status: UNSURE (   9.47  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Mar 10, 2025 at 06:41:07PM +0800, Damon Ding wrote:
> The main modification is moving the DP AUX initialization from function
> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> eDP panel during probing, it is also needed to advance PM operations to
> ensure that eDP controller and phy are prepared for AUX transmission.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
