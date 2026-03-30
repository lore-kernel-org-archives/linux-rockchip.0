Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4262F1061B29
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 23:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpZ8eCOgKDxsHpwCCTjEsPWUls6l+Mi36TYfMKMTb1c=; b=MJh+S/LEYkV15d
	NS/44nTRGMWD+cJv02TrN+VDqg/2+GA9MoP7wr23GPLbpx+61uTm/nJArzxDJU+7FLsH5/qPzOOpG
	jrEadGPErTGmRtxbCYdTLvbKX2ebE8jZjglCPS1TUcwRnHgPwKIhoKg8kTQdMY86gEXob0z73W10V
	fnYKQvDEgzcSoBEVghdglwAFOu0Gv+c7+XS4t/MN0chN58KA8job13N3dQurNu+jlGEGntef0VXm+
	2XfC1aWNQvFtULung51eCehDl0NJakj2iCwgEh987DXnuuHNplBFRwgcj6ZxkvrRqygGSxdxbroYI
	2upqlVby+rlMoaIxCjYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7M91-0000000C1vW-0250;
	Mon, 30 Mar 2026 23:35:43 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7M8x-0000000C1u6-0x2e
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Mar 2026 23:35:41 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-43b9974ac31so291439f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2026 16:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774913737; x=1775518537; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t45tnYDWZsG1khbHgAc45VhFz8HmN2CnAvvZjkYxjlk=;
        b=f6wv3PKQWEuY/FCjs5JXvzInz50u2tCzp7LcpK/lorLk7dV3PRxVsJ6/3uu97utixT
         ySIUoScSvKIgrC0dnj9cge/bGOhqJohQbWe2hrSRvCgaI+mXs5LOXKj3lUAI104DGU6x
         mEpDYIDhDdnGSLgAsn5QPRUaIB2pVEvpISj7gT+X0H+fLmAJ0xq8wXCdaNZdcokiMXOm
         FSzk8mJFwRAfvmaNojkbcaPN18NhtCnh3kWrGiAK5Hkc7N10vm/N8P0m4P/tf9VKpMdX
         MuxxzlV7Xf10RdJru8kPTE5jylTfoC8tXEeHRicjZeMoAAse83eSCx03cq48eLPq3P8J
         tWIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774913737; x=1775518537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t45tnYDWZsG1khbHgAc45VhFz8HmN2CnAvvZjkYxjlk=;
        b=jUfEtRex1O3HkPLssTQVGgivOoZi4/dhLbf/0ll+GuGbWYORpin42SsEXhce6w5Rpu
         JUWbu8fPF3qo2phanVeIb9Nr+p/zsMW6kdZO4B9RRbF5MgQOIXNJEZuw+6nv5L0ucUWc
         CyNFwhCRtsg6s4ymw4KjzQvt3L04+4aQ0gr/H3PlWi2BVRb+8XBWLBKL06DNJPAhIsIp
         GaduHmjT6hhHr7NIYJunN4sK2kbzjPTaL6wA4yGjm2NkCD8fj1TPKGJR8JoUfCBSVFYf
         yxpkKgeQa6y5Fr6vh7mPOx8o3llF6w82KHQBms/Ok0DQre/p1UkI+j0VuWm8Zc22rlrS
         ioJQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3nwgnyRA0F7c06hz4FiDoUyhtSB6w5JiexmdkZxsAGeZpTQBnoF6WlMEVVEdSOVFbm6b8aUYI7+m9BQHqaw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCFwA8WLksGGBbMPanG7LaY8KqJewwPzo5MYAzkJvozXD1QKHS
	Bibhxa6uHoG9EYhlW2cNPb4G66jnw06RtY9KjuOWfii+ors8UHjFySx8SlYC+2zz
X-Gm-Gg: ATEYQzx9IEYduYXhzGZFmBNmSlU4dhcHTabswQtOKHzgGylj5icpyBZbHZTyglnGojZ
	0vJUHu+M/GYKCbWAyOrBfWh5tDf+k1OrAIQL8fNBL/KNeP+FdEFPCkpm4JJ9a5AOmgAVmdP5ECN
	VzzUVal184OpvOiVYjYoG7lEQUNJ0LRojeYfi7M8iMdAyVs7bpb0lUJt4HNxJaKS2JXMDYe2OhI
	a5bLQXpA8pIqtbR1MFbB0dFOJKH09pKvtMS9hjSL68n8dNZW5rDaIXFvKZEQ0OAdF3U5jiCqUHO
	sTYv6kxlQS2htcbmZ/QEdw5JlC/TeYxf+wXl9KaHsaNrkrO7HH/A6HVMInB/LojVm2GctApRWYN
	x0Qym6Yabo93PuPNm72MKzX0zTsTTe9p2mxeQfu3C4/F/+vJ/hIkKFs0ocfxt+wprzNfjImwCLG
	kiibUrNVemejauNOvTExC29oqQ5g==
X-Received: by 2002:a05:6000:70d:b0:43b:45d1:f42d with SMTP id ffacd0b85a97d-43b9ea2bd01mr10281733f8f.4.1774913736851;
        Mon, 30 Mar 2026 16:35:36 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:fc92:d05b:3301:b722])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf247102dsm27956754f8f.27.2026.03.30.16.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 16:35:35 -0700 (PDT)
Date: Tue, 31 Mar 2026 02:35:32 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] phy: hdmi: Add FRL TxFFE level control
Message-ID: <20260330233532.ulnqiqrogezswht2@skbuf>
References: <20260328-hdptx-ffe-v1-0-53ebd5dea20a@collabora.com>
 <20260330085723.4rewkbs76lz3scum@skbuf>
 <f2827d9f-ddba-4fbd-8d1f-a1a2d1b94708@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2827d9f-ddba-4fbd-8d1f-a1a2d1b94708@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_163539_288362_A9DFEBA7 
X-CRM114-Status: GOOD (  17.72  )
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

On Tue, Mar 31, 2026 at 01:56:32AM +0300, Cristian Ciocaltea wrote:
> On 3/30/26 11:57 AM, Vladimir Oltean wrote:
> > On Sat, Mar 28, 2026 at 03:54:53PM +0200, Cristian Ciocaltea wrote:
> >> ---
> >> base-commit: f7b64ed948718290209074a50bb0df17e5944873
> >> change-id: 20260328-hdptx-ffe-a89c51e66904
> >> prerequisite-change-id: 20260227-hdptx-clk-fixes-47426632f862:v1
> >> prerequisite-patch-id: 5c1d442fae39103bb758f54738aff33d2491401d
> >> prerequisite-patch-id: b86f30292308345387d2a6b50949ad040b931592
> >> prerequisite-patch-id: b1335105db9177cb10c64ed1bf0867832e6aac2f
> >> prerequisite-patch-id: 83db6603d13e19f239e89fde2b26366eb0106b7e
> >> prerequisite-patch-id: b534395ad315811861f11859a3946f65c90c631a
> >> prerequisite-patch-id: f9637e57c902f35218cda658397416f84f7285cb
> > 
> > Sorry for my ignorance; who is supposed to act upon this git-format-patch
> > base tree information and in what way?
> > 
> > As things stand today, the build infrastructure we have in place will
> > not be able to apply and test your series unless it applies directly
> > onto the linux-phy/next branch.
> 
> Oh, I assumed that since b4 makes managing series dependencies straightforward
> on the preparation/submission side, there would be similar tooling support on
> the build/integration side as well.

Sorry to disappoint - linux-phy doesn't use b4 to build-test patches. It
gets them from Patchwork directly (as you'd get by clicking the 'diff' button),
then figures out whether to apply to the next or to the fixes branch
using the git-format-patch --subject-prefix string ('phy-next' or 'phy-fixes'),
then posts the checks back to Patchwork.

I can somehow imagine why no one rushed to improve this. While sometimes
somewhat useful, I can see the risk of such feature getting abused to
create a giant cobweb of dependencies that is suddenly no longer the
developer's problem, but passed on to somebody else.

In the future, please submit as RFC the patch sets that you know don't
directly apply, and mention that you're only posting them for early
feedback.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
