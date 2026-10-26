Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB76A606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 04:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=G/uO2Wv5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=K/sHrGmF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SCcz7Ni/+PHtVtaOHdTQEeOYpINsNDETkNz0EgFmaFU=; b=G/uO2Wv5A4gRrd7XS+/D8xTMnK
	Ag6zLlywmtq1gsEVjItNnmx2wDpnoE1Vg3PELWF0zxG7CvTpto7e7TH+iYLgJq71p9JoLaQWqopuu
	Y6kyGR8lx69aFx29GfdbF8DKGgjy628/1p/8/WX+3R6iQgVovgXa5CiroPo7ZjozsmmOUr6FZGzjY
	8Os5zqSOm1JW+EVin9Izn+h7fGY+Cm/nUt9ey0VovPl6bMwdq3UQJc/oq4es39jx4h91LlGQGvPDD
	777QZco5vbPEoUvIslPjfUBYnKqCfjOvp04dQmIJVbVDn8q8+YkPXDgODS8nblw4qPSL/lHvPtA+Y
	+r7+Du7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLCSH-00000001hlJ-4AEF;
	Mon, 26 Oct 2026 04:37:05 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLCSE-00000001hjl-0oQ5
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 04:37:04 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-6af7f47001eso446472a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Oct 2026 21:37:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792989420; cv=none;
        d=google.com; s=arc-20260327;
        b=l0wdETVBdujqaD2gtYhKdSd6rR+VxI2tlrVlju8xA2HtlHnBSKzG9247HPzpMsR4Bi
         N7vLejrXgSkzAY820Zt1sXlR09JPJnGrtttrtyWr4BqkxbhbuhwdSBTYUVLyF+qmnFnO
         hnDVNj4fHw378V2V5L21PWgXWLfrNLMa1XQhDSBkzm1ef56SMo219GSR1Dqrh94G3pjT
         d/xFQUv6KRsWyJeCzXttVuHe3T7v3p3Buqfpwcw60l5tidfHJM0i4N1RJEty2CZ1pIDL
         uAL1wwY5XWsCUAyYQanV0rPUtUp/yYeFVKoMUp3OlRp4BGlqeyGVCiBdICoTzfgFDq+0
         ftDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=N9wqBNwFeUJDyujtnIyKOyjh4O7kEuJC5I05KW0Mx10=;
        fh=fJLMYBnQGykeYl44fovMheIh3++YeYlaUHNShOfOmOE=;
        b=F9F6bXG/DUBo99YeVqzby4Ws+y/eYN0PuNJvFX68qm9NXRLTntQO2mJF4r96v0MJPr
         IKyZ+mHeBzEhYqA1FPkrqq2Sx5vU7TLCafs6AeqB/cyHtwGJo7/5vlUx1W3+YNO3PJ7m
         FxRbvBTIqD8ABaTG9x4S9aJHQyBWPBhe2ZKI3HU98vloXVuJg7wfOwXM3jIMsaN01cWp
         u3qK8PuVMZsxG7rLZt/t3ByqVRsGTbXGRyanh+aOO8gGQbCpkXnheMCAiL8hg9viFPSK
         sq0zxnKCp9El3PKZZu0OEGCpAJ3rmNkEeejzJL3A1m81eQNF1Cbe5PkfX+CAfkLJShB9
         Ko8A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792989420; x=1793594220; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=N9wqBNwFeUJDyujtnIyKOyjh4O7kEuJC5I05KW0Mx10=;
        b=K/sHrGmFl55Bh3VR6T3+j5V7c6A9Rit4kq7dRsppLOC+0MtvGa8YOqgiGwtGhs8pq1
         hp6bK25VGQFcjaQbGbr25U9nTQK80wxi1lSza0MeGU0EPDWUWTf5lA0MVtr1tnqGmASP
         51GOoSAdPJwDsXnjYZKzLwhoj58V+VASxeBLzQym0SpkFfHAQhqgH6bcwpbkDyXoGIq3
         4jj/3qdqeGEZkXjswhaZIHgkiA9OddOPtbPNSlOBI4tas+kMysnLpiWyV6tuBIexmJ6o
         gyIxepWIQV10QkuL5r19Xzy2p/DDgU4GZlCK0BJ7s/DvEkVX7u1Z1MILRTOrfoPPnGjU
         qwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792989420; x=1793594220;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=N9wqBNwFeUJDyujtnIyKOyjh4O7kEuJC5I05KW0Mx10=;
        b=ZvFyRYKj6/+H/iIH4ARthJqW7gYgKCdT/iPt2+i6km2G6xnFTRvamhHA9aHp/wS+Ul
         cuUuvAnN527KYKTavxDp9UrJS3aPCEZQIW/BofMvOyRLFgxgBq8/ybOfkyDx+dGtrn9t
         3sSu+iN5kRLUcbacwzoqt0c2uEcCwVdWxMQ7EQHPynpOE06S77bnYdmELzN/AUtfcZGL
         hSpZefxKRhbNfG/do39ncsoehJy4ZRtn0U3RDGzJp+iYqgugq+2t+07qwffWhaVd3J4c
         KCjaAqj1PK+397PQgR1Q5twm+yfxxn4HcSrX1Ihoyul41zLS6hAjAQxg4fcdSLSSy4b1
         KJVg==
X-Forwarded-Encrypted: i=1; AKwUvBybO36pgP46Z467llV0imh5cy6Y/1RlGykoToLyx9+narl41MqQ4+ChXjCs+GWPTZNkf1fP/S3oRESPTWjaCA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIgShk7/wop6iN0smARTsrOWbccDYUh3bz4f7q5kCC66Na5zBB4
	LSbkizrq9mYHMXfJohdBA7KLkM7YXZZtmbPZ/wg5leaqx+GvYnZwO6LItNBt3yOsyLovWc6X0tC
	A6NXsZgXXgIGW9APUlG1r9VQrBRoB8gc=
X-Gm-Gg: AYBFou2Hu71irVJlvxeH/ie+hDOD8b9XXVeE8YAbjjfJEjkainl1cPOI/h5szZCPPf2
	zcPF25872BRTbj2P5aqUfQyEM99vhGqE/zcNkfl/NjVxDC78ddZbKe/5m4ZriZfPTnD11PmAco0
	LNJqQnXMEo8nqSHo5mme0hIrr5lckE1gQYzZyDzD9xhzrazNDnWkXvVP/h9zac9BTKGjOgic6IH
	N3Y004c62IHnSedi6N50mUzafegC+NaE9k5sM7lzy9kihyFgU4xHdrrORhL3b/8X50JZghiQ3Jf
	klroQSdDs6AVnH2907mNx8TBMu5K0+IW+XC5P0dPl4G6dd/62ZieEkEVRaelYmY5P8iEbiOVJFG
	btjiU35gwx4To3N2EynX7CVy/TfjHngU492Wf
X-Received: by 2002:a17:906:100a:20b0:c25:3ec4:9e43 with SMTP id
 a640c23a62f3a-c46bd90669emr681750866b.0.1792989419265; Sun, 25 Oct 2026
 21:36:59 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com> <f9b60989-e58b-4ac1-81ca-f0d37d4143b4@linaro.org>
In-Reply-To: <f9b60989-e58b-4ac1-81ca-f0d37d4143b4@linaro.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 26 Oct 2026 12:38:40 +0800
X-Gm-Features: AclHuK8vZ0KWZhabRgBdGgKek8QAVY3LLhkkHh4HIG41oJjGA-gl75AkOIcoHmw
Message-ID: <CAPwA33LZRPs4O7ihinyorahAQiWY69C1pxWnhVE-gTUA556MYQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_213702_247895_871770AF 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Bryan,

Sorry, I missed this one.

> Would you not be better off scheduling a work job when you know both
> blocks are out of suspend ?
>
> That way you always have a known sequence out of reset ?

The two PHYs share the BIAS block, but each can be used on its own.
For example, while DSI is running, CSI can start and stop streaming at
any time, so we cannot know when, or whether, both will be in use.

So the block-level setup is done in runtime resume. The runtime PM usage
count makes it run only when the first user comes up, and a second PHY
coming up does not reset the one that is already running. And in this way,
I don't need to maintain a refcount in the driver.

The order is also fixed: the phy core resumes the device before
calling init or power_on of either PHY, so the block-level setup always
runs before any per-PHY setup.

Best regards,
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
