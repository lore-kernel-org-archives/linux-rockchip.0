Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAB9BCE8D6B
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 00:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmofl6TsBekcRrSTwfOIiRoshcntlAkwfUuP89CoS0g=; b=kUIazo0fSlR35w
	L8exKUE3yXcayzOxa/tIr2TG5fzjppG44AQeUrUzhvkqWJUY3KzdSyxDrg9EONmIf/IuSp1zLcQdY
	E2MCzBH9SnM3DXvb4561w48LPumofWUtNBTCJr/C8bAxQ1iZFQCcqIJdBfvO7rh+g/t2nRJ65jFpX
	atpoLXm2arND33eM1F/HVQgrWExbVahXDcXm8FGWtkXEOKHzh4bm3cpnaAzjSFCM+A6N0PKUZE+Ir
	Gn/TsPLDwuY651ZirIqpUNA6CHTLPDrJtXUWU3QaaPC3/abRRgPxUo9hkQenHO8YNXH4RuPKUwytp
	9h9b1oWJIfCUeNI6qFAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK48y-0000000DHHn-0G5j;
	Sat, 15 Nov 2025 00:27:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK48t-0000000DHG6-0e58
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 00:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763166468;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MY79eneNfrMG9dz4hIdkivq1gZvCTrtfj5tzDev1p4M=;
	b=F6P/x9aCvDfl6GcuUO7XUBHxvBrAibq0xTTIi3MlvdauPMmV5/mNMdGsgv8YuQ/e/qLajD
	J4mU349AewLwzU8iTgREZBE5gZ1Vf5MyW6nAHYTMBL2sp9UpkMW9EMpLy3AM9qyJeTQNH5
	rzFl4+kY5DyXb4qUf6/Q7QMRXfUCd60=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-678-3kazrqjRN9u8_Y0AoXZnpA-1; Fri, 14 Nov 2025 19:27:46 -0500
X-MC-Unique: 3kazrqjRN9u8_Y0AoXZnpA-1
X-Mimecast-MFC-AGG-ID: 3kazrqjRN9u8_Y0AoXZnpA_1763166466
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8805054afa1so65338386d6.0
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Nov 2025 16:27:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763166466; x=1763771266;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MY79eneNfrMG9dz4hIdkivq1gZvCTrtfj5tzDev1p4M=;
        b=uN6Lj5nysOYZJNwf2++h0YsXc4OwaXxQJwIZPv6V4frDoS4w+eFZ382PY0ncTRd1Wn
         Cwu+hJvEW+FfXhtTD88hFSvpPjvnytyDlYwG6KEfi/+vmLNzrjKxLMDhbbon1nvBjeuw
         5jwipyG2kXaMaK5/PlCIN2qBLhQfiTXJfsFPhZgWEISMWoGgFZJl4uWge2b6sELLBLHe
         FZnvsb/htKQ7TVK2uVyA5lTd91Cz8NjhFg+GKnkd6euNHj9zNCZveonI95VGUuFT0ma/
         G+CsbBgjvROjK5JO7iSNC59E4bg1pauiITbWFl3tFdY2FzK9YNzl/jq9x2OhS9lVn7hr
         O6FA==
X-Forwarded-Encrypted: i=1; AJvYcCWR1jSpCqTM578dVEOcQ6AdDxjsrybL71mXCVZmi4qcqHlnYKdnvB6pok3pImx77ZSeGTtRYtSrnhKTDKEORw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNK9pcyD4t1K322W1wbQgeq+iFjGNEh4JspfvRgiNniibscHBL
	rTTmBK615O9VQ7CG7zg2fAnpuC3df0bBlOZIunnbpTCL6rFPh32qfWCzNqvnpYNgtiDF/KSmgLR
	ytjBjwM4Heg0GMlTdklsishyETPsi0/zSB0/JbQT5NUHQ9BohmVdZbWY8uYdL4zVWRc8zdB1cbg
	==
X-Gm-Gg: ASbGncv07L5BI5Ff4wWYYtGdXBES1cPiBzXreKQQQpkKr7qgzk2v/pVss1xhG18Rvrc
	YSwz2zMrI4EBF+AvYnVB/3Sm1c22qLD3OIjRlBNf2JOAqQFJqFa3RuXw+44VyjgvBrdQpiJlRZI
	pIS3xG2kvJdjwkdDILTPFr+L+Oz/6+TRKcDW2i8ThCS/zcmmtbOzsZkPnQisDSsKKi3hF8WQ23X
	xYVaLlZhfjZVpU+0gWqhf8favTFGSE9HD9wG8oiBfY5D5lbmRFKniDq8r53RhCeXLNHAuIHxCiP
	weeFrnnrhRXgg3MSKyS4Js7ly6pkUbxUHRztjRQaoBN7C4WzZ1ard8rUjbLQnx7E7bT6v5mNZwN
	BiC1la3ZDKdEuTsl0DgxYKTpWeBGzY5/gK4J/tWT9w5Nm
X-Received: by 2002:a05:6214:5014:b0:882:4be6:9ab9 with SMTP id 6a1803df08f44-88292705010mr65042276d6.54.1763166466362;
        Fri, 14 Nov 2025 16:27:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGraWChEBaQ8Kt2DRqLdXdplufLvs8tWzEMELdXUg1GXFx2RN4xE4J+31DR8rAVpI9IzMPVUw==
X-Received: by 2002:a05:6214:5014:b0:882:4be6:9ab9 with SMTP id 6a1803df08f44-88292705010mr65042096d6.54.1763166466020;
        Fri, 14 Nov 2025 16:27:46 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8828659e0fcsm41781696d6.53.2025.11.14.16.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 16:27:45 -0800 (PST)
Date: Fri, 14 Nov 2025 19:27:43 -0500
From: Brian Masney <bmasney@redhat.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH RESEND v2 0/9] phy: convert from clk round_rate() to
 determine_rate()
Message-ID: <aRfI_xT680E7Cf-o@redhat.com>
References: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: aE7oRcOqT1TwD84ZvlfeDutX5enKks1MMJOCpJG7HWg_1763166466
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_162751_258138_DE0D2292 
X-CRM114-Status: GOOD (  14.30  )
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Vinod,

On Thu, Nov 06, 2025 at 06:25:46PM -0500, Brian Masney wrote:
> This is a resend of my previous v2 series since I haven't receieved any
> feedback.
> 
> https://lore.kernel.org/linux-phy/20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com/T/
> 
> I'm hoping to get this merged for v6.19 so that I can remove the
> round_rate() clk op from the clk core for v6.20. The clk maintainer
> (Stephen) mentioned this work in his last pull to Linus:
> 
> https://lore.kernel.org/linux-clk/20251007051720.11386-1-sboyd@kernel.org/

Can you please take a look at this series since rc6 is this weekend? I
have almost 200 patches merged in other subsystems across the kernel
for this work since the Summer, and this series to drivers/phy is the
last one remaining that's blocking me from posting what I have to
remove the round_rate member from the clk core.

Thanks,

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
