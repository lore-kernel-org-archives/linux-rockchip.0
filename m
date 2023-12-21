Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4338CC35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 14:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BA7QzP/VUHlA0fmhoTywnqYTkkj58Bn3feuZpcMCDgY=; b=XtIVSyNHZ+ZE/j
	w2guUjOsT15n2L7S/eQNwRGRZNdP4uJmtbd/WakJmgUvNihQCnB8cISZLbprWV1o2seoY+4XB8VS9
	P1rY1QwEeH6xsfAGPSgTaF42ObJxqtc73/puIENsn6RNSWc9FQDCWzHvhOwsY/yS1yQIg5YcaE3Ku
	/EEq7vC4mcOp//1Y1zXExxziUQePqZ9SiSPnE6RNwp6MEkufngxaUa6RuH3YfOWL4GpgIsb6ivxJ1
	YOXckNihr3VetOS+4ldj32SMfGJ6mkS0hWrI8WOWQRr9h/3wIQTP5DTO8FFaJbF64XxVrHPlvk+Pf
	HsMU4PiZoBQXv1oemnOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGK7W-003BX5-1n;
	Thu, 21 Dec 2023 14:33:54 +0000
Received: from out-175.mta0.migadu.com ([2001:41d0:1004:224b::af])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGK7T-003BTZ-2n
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Dec 2023 14:33:53 +0000
Message-ID: <29c8523b-6554-4716-91dd-b4e7c0697b33@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1703169217;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ER5Li4YUkTrQ5sLdp19RWCOPTn5sa6zUgZcNZaJrI98=;
	b=tTb44zhc57HP8nj4wGnPm9XDpK6WEm1NDG0J3VJnI9oYIVy4ikdNSYtIFJDz8MIu70dstZ
	bScMCNxyEMQTs/88WUrnZpJSEtGXRZqM4S/xaGV2jjujJH+KUltz3Yr+TLFnmtg4idmoIL
	QETW309M/cEm7fq9jZ/qFcY2x8G4YHs=
Date: Thu, 21 Dec 2023 22:33:21 +0800
MIME-Version: 1.0
Subject: Re: [v5,40/44] drm/sun4i: hdmi: Convert encoder to atomic
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>,
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
References: <20231207-kms-hdmi-connector-state-v5-40-6538e19d634d@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-40-6538e19d634d@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_063352_063022_EB71B900 
X-CRM114-Status: UNSURE (   5.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,


LGTM,


On 2023/12/7 23:50, Maxime Ripard wrote:
> The sun4i_hdmi driver still uses the non-atomic variants of the encoder
> hooks, so let's convert to their atomic equivalents.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
