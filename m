Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70ECF606A325
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 01:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hWal87Ct;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=RLKD4rdw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bSjA+T7csT9QgPslj5nV68CzbR6uPxCgA4Mt2p3axb4=; b=hWal87CtKBAFv6KW32XHsQtDQK
	QRAG/3KNpP9GbdiNjbQzdxZ1IXHZMgcvtZSGf1USzYp75RrfFmHMpKBlkFz+hF13dYR9XKCmWfFWn
	zY6kYdulwGsVT0Gv2RRiXJTd8hW+Oa/k+wM4owI/qUF3RDUKxY7wHkgzxb+0USMXRI/vUT1dcKPne
	gDgGSCQFc42ELbekRD3xjHieIcOZFbcTDIbk8tk9qNl4eFhVpICWPJ8h62fZDIUiR3zNktLKtWukY
	SQ+dJpuJWbGzzdnlUf3qlc7jnGyPcDmhzX1jpHo4QQ4OSauEAWg6YJ6vEFBCHzuiZjL2dsM4qoYjp
	6sFJN9bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTr4H-0000000AddW-1gq2;
	Thu, 19 Nov 2026 01:36:05 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTr4E-0000000AdcF-0wst
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 01:36:03 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-c506187deb9so28653366b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 17:36:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795052158; cv=none;
        d=google.com; s=arc-20260327;
        b=F3O//hTKz/SkJNmGs16nt/REVjSo9XH4kyl/iUbPWMUucOqVHVNxc6Dui50IoBrYhU
         pGpvX/jSvN2Rm50zVbQkd+oqWaGAEPfZZhv5GBD6+5cT7q9Hw5nHe5XOJ4BR7QO88DBV
         DGpuU2v7c/4DOHyA8aZ1WjLcc+3cUCVC4w8lzMehdV8TxTOFCroBlXnw0Wl3VBVGl6mM
         NYxdw5NUotSKH4W3KmsK4lQidkRBxyR5Lo6LCEy6f7CZS4bmtJSg9tZPPwUsM0cFT8PQ
         AllkxjV2744vqs79wqP4cK5VALVykIwB8tZvdrXU5t7RWY3KZCCTXT/+gfJB2nE++Bam
         tjsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WaRyxnVWPqgnXOf76Bo8+FkIIWslu9CLgRdA1TVjs0A=;
        fh=pDgx/mA01IZpHISL6jDVqk4ys9eBbrPBl+O4a3CNrik=;
        b=KnmmwKkWbtjlrI8cKRgnzQ+GQTT/qvDrF+ynSbPBf1LFzLuFm/WPopFRGQCmZXXwuQ
         WRZ+lIk+WWycx1c3jRphb16ymNLj4fSoDkxYr3476VaWwtYoPSHECKIsvYuj1eYphGU6
         u4JxSq+Gp0j2lRcfRgPsDy254ryHtD3i9QzVQb5Af51aL4TxWm1LkVJBJy1XmUpLpCII
         TArgjbou9LYsnpOG+uNxKchc2zfGarFEYER30xn6M8IOZ833Hk/l17AwBtyEqVKoF8eQ
         rm6xIrbEg0/ToKTu/lmYirrV3sV8sFDjCed7HBidFy0k9xadEVf/Tz9r79mKNw/0b+eG
         4T2A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795052158; x=1795656958; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WaRyxnVWPqgnXOf76Bo8+FkIIWslu9CLgRdA1TVjs0A=;
        b=RLKD4rdwg7AX6q6Xv7pL46VABEUr2hG6XutVXVHPoM8EcI/QtmiQzX1R72PY8xyAkJ
         D8NfMPl0Mvwnok2jdxKhfgKxHi40WxJ0pVHmEMky6Mtx/TsLAz8fClu8ydBEomhh2k8b
         7mcldCN6JK4q1Vr0GXpaprI1Phmx0pf99Oezq/poINZzO/lKWguaSj54lROikD2DTti4
         JKu4frlISQoI5TdbP3c+hZhA8PTrErx+Ol0a9jSBkwwOezEXu+4AZaCrsP2w6Mz/ARZw
         uBy8i+w+pNC4zGnCGe0JTOMOkbaFCZKHZ21NlPnZJ2YrUfbz/w100Ztlbz+uCHtKrCyj
         9wDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795052158; x=1795656958;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=WaRyxnVWPqgnXOf76Bo8+FkIIWslu9CLgRdA1TVjs0A=;
        b=IHnmIQty+2MaTQQNsaeHJ1bxfUcKMijSPWCEorKUdzHE3Rb2IK+xb52nipA1I3JNYv
         Xxgtf3vccuKcaB/2FLzopJyJifNnGuhkHf82HJBz8OYmyUlC+QmB33onyaQi0pBeYYoV
         oDmobpzrhTqWyLMoNt/xvdAdKgIRNKA3bU/oF2M25AiQoezB3Z+q+FtMHHxHmP0ot9U7
         UxhdCJxsi8P2PnwwrjeLmC14PjLrnY1RLQRiXgx5hfds1megv04rnvraee3dPln4qTN+
         d0rqPhZ73T77Fh8q0aQ/82eVT0j8xmzm/UN1S6t76TUsh7wj+K6yFr3xfe6L0E/1ZbFs
         PuHg==
X-Forwarded-Encrypted: i=1; AL+hErGQcpwyWgSWxl0ZOkX5hiJAgTXnm7cccTTGCX2GfZB+KfvjbxIc8PGaLqx3pHEO2lWOJqksIZe2qV5qU8uP5g==@lists.infradead.org
X-Gm-Message-State: APuU4Z8LqoEjA8/NoNFMtTATFBAJNpsICcbHfdjONwpy/4sWU4Qbm75w
	ri3TntZcByLtQqp6YRymn36SCBk1l2DlbLTrqv9TVLn7pmNWrS1zjff9sUTIaFEeACdDS8V1riu
	9NpL6vDzDfHKwndl81Qk4KYQ5HbjUEyI=
X-Gm-Gg: AYBFou0MwCUm6+SQYigBi9aQIieWZ7tmCoxMQmuJ60ZGFqvque+Wpl1HvGPM9mjXHrm
	nkKh1v2YJAzevUYmS+VAYf08cOVqg2R8M2vBpR7Bfx6jSIQpNpZIBUrqpsxG9Ht/mZQiOdGw5Do
	OqSlcxMlH+b6eRCZNalmZIIzvza9pLf3bh/z1ksYKHWZMbQ6Lg9El9SqeNvwKRmtoLowlK1X8li
	3fvr899jwUfxIL6qsitWwJr+TWXLa6hNCkMcfPtAcNI8gSnQ3hxEqNg89rescHoa1cq6CwknOUR
	yX40zTkkh3kG2RhqJV/qjcu2cObotEAKiuR+SrLE/MWhlyNneWQyqBwRkNAYbLWcXK1zso6tHE9
	PZJpdD3RCEPe+r1+7pdVLxd+UIz05igZARqGCbXPPfauW0tMR7d+ITjZtwY1lDAVMFp5mNCE=
X-Received: by 2002:a05:6402:446:b0:6b4:2960:d381 with SMTP id
 4fb4d7f45d1cf-6b887a7ca45mr3534756a12.1.1795052158003; Wed, 18 Nov 2026
 17:35:58 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
 <20261118-dcphy-rx-v1-v7-2-8de1adac3a74@gmail.com> <3a9e999f-5ff5-422c-aa65-b8560dca84bc@kernel.org>
In-Reply-To: <3a9e999f-5ff5-422c-aa65-b8560dca84bc@kernel.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Thu, 19 Nov 2026 09:35:46 +0800
X-Gm-Features: AclHuK8yzTD5Ny6Jae8xfaKIWU82OgGlGfteSTdmbBGr1nUYx7XM082OBv9L5nk
Message-ID: <CAPwA33KcMNnyBEeWkheaEQYUp8FhR+xOdrfv2CAEhG+YuAV2Vw@mail.gmail.com>
Subject: Re: [PATCH v7 2/9] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 Select TX or RX, add phy-type
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Quentin Schulz <quentin.schulz@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_173602_300250_7A8F6AB3 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
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

On 11/18/26 9:16 AM, Krzysztof Kozlowski wrote:
> Please drop the tag, this did not happen. In the future, please add only
> applicable tags. Otherwise share how this code was executed and tested
> on the actual hardware (make process, like building code, is obviously
> not testing).

Hi Krzysztof,

I will drop these two tags.

Best regards,
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
