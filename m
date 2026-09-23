Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95482C9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+tHJagoko8Ty28OBsM4B7NX20DfhYaLlllKZC3Mi70=; b=N6+153AC3x7glI
	4C2FM6SpBzhHgglOp9ISh+rRK8XL+1QWnHey1H+AB3YD4e1M6Ig+t37r4nsL4O96r3HtxxTxnFFDL
	/rJ+HNmDPu/qy0Au0UxsdZdL/dqPhHOY/jit3u4RmDaNT9iXNKiWjtGuClEC9UATFtkeK//0pXl5S
	2083Y9w+zt2tXuNuB20SZp8PDQ6b+1OqAc7zJPSlYdwungJIWojA0pupI4h9CdX1AnyRbubCIM3Gr
	XcsEVuKRl8vN91V+49j4YxkSYzNSbUYJ8ZElN9z3WZPRaOQSkm4soC9gs0jawijSofyw9eeNA1Vte
	bSChdHfOTPhvWJDNKTLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MHK-00000008HIc-21Dp;
	Wed, 23 Sep 2026 12:40:50 +0000
Received: from mail-ej2-x00.google.com ([2a00:1450:4864:34::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MHH-00000008HHN-0zq8
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 12:40:48 +0000
Received: by mail-ej2-x00.google.com with SMTP id a640c23a62f3a-c1971f5efc3so48768366b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 05:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790167245; cv=none;
        d=google.com; s=arc-20260327;
        b=BZ4y5U8KNht2CoKccPh18b+Szx+PF5hAQY04wow01S/f85/0MdiTT1dSk/8HjYJMnc
         IGs8HOTcdTHvdATP/6AFgc0q7KNk49u3nbSbm95Dz6sn+NO+XLtcOdCO6Z5dUU/YV3q9
         AH1MxKjCUD0ZUbXG/7h1kahV9ONTsoUk9+dqPvqwg/jyeQfmkW/k7T+7TOb2lR6wUFBs
         EP6ugFoGrr86+iCMnjnAjw9S+mfuph4K2Lek3XgtFYoSw4yJewpJ237/4hKbdG0mMHy/
         NoTMZ4ATTu67QXi/GfwqvUoqYS9WDQwEErrl6mhrD2cteTXrZluhtJpNaiH2D5e9w1Hn
         5AGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yrBXUqSfBJNVOGA4p1L4WG725TYm+nXRxrzQgFuRPz4=;
        fh=vBSCFwCvLZUyuE2N3uh32Dm8iuYyOoMeIkiqedlNetw=;
        b=ZQSTwjr5GSwXPO68U1+SohNCnkMtzpqlSEIOfnU1dlVfupFRSpigcYaPeqBd8R40dn
         kjse64DTSZKgJw2nYFmka8Nf5q2pe/GRAPAMzxOMU7OO1bacpc6adl9xYcDhwznl2R6U
         NMwx3/2qtW1BtH9C/XUiqUvaiBvyvp1B3B+ZqdnW0Xdnd0tkPhrbSmD8e0RamQlUw0tQ
         eMRUYNl8JiQozv5tNh6lKiThoVBzxf6e8/E3k9/g7KaCiBZpVjgtDBlKlDUdOpPHi549
         2fnFnyDRmxGFpqICpniWSEcMjehZfq2AUgA2GGrbyqRUNTi/Pvt70DBtzkWtcoakkDA3
         Yzzg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790167245; x=1790772045; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yrBXUqSfBJNVOGA4p1L4WG725TYm+nXRxrzQgFuRPz4=;
        b=TbXwFkiryluEvIfUM1PvVRhthkcjJWHsmVFoMRTVWnIXg9XQ1sWpdkxhm7TNhFHoOE
         yxzL2WOXuzR8aINrapR/7sTBJrGC0xv7xAjuSbUw3v0OEJpNDcQNcUDGc29J8Aa715cx
         xXv5v1DZGdYN50pgqpyEYUNTTrdax+NCwGBNpH+bTxORJsu5Ij6VDGglS6W0YMYrpE0b
         swKulj3paZ70T2l+lo+dvTuM2rAOUGvFl4vo14j6lDEHkfNu+ZS5KM4aQpYqP1yi2Vxi
         DgrEP48lpS+/nMnWzDASSpmciqisXT75AYU11lTL+H8c4SmEd8YIqzOhmiExQNSxB03e
         Brtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790167245; x=1790772045;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yrBXUqSfBJNVOGA4p1L4WG725TYm+nXRxrzQgFuRPz4=;
        b=nsPlq3+J1ZzlRA1SaIfgADkwxz6uaubR55Vxn/sGi6ezhb4GKkLvgsVuAMS4qmiNEn
         3roqlz8RBhrTiZZObB9EC8yoIvh/pam5snXh43U2FuAQrqzPjo2lAKm7XcTJhQPUy4Q0
         7yXK2QNYCy4aoiJPIeiZPsiH4RDJCq4Y8w47AbY6wNCHH0IAATHDe7cer/JaaM2nIpdI
         N6Z9MI5n6L6kVmw7r6k0MF1+XYrdCBcZuqfU942iky0/uOE+aO15HQOIAVaqfHNiDp/s
         jP3jk8/TaOhd0aZvpXNnY/VJhOAF+kyBLqhRr5BAegHghcxcIG1IKSeciA+OmzZZOjif
         n++A==
X-Forwarded-Encrypted: i=1; AKwUvByRjI86wXIu3aIsAdWEFm0gES/nLnrVBVtOey7XO5VB5zThfj6Ubqe10XOmuKwJBWpsdQ7qYkPbMx4duOvRSw==@lists.infradead.org
X-Gm-Message-State: AFuF++nEb/BPkQptUjDOOapikIQeH6hlwZcHRw6WPTID4KZiB2wdeeNk
	e/vsIMMMvqiMrsAjWnnCAOax0zTpP/3QoJjd1IO5o6mxrEm/dmYwEy9TA2mEeNSK98kugP1eXS2
	hdQkBcE745w4DqCn4astLC8M1MXFkoLw=
X-Gm-Gg: AYBFou1UYpeoqoGVYPekyyuIpuIb9/6QhNlo3IzYNNhDOzsbLKlF2/PRzpXuo9CaZ37
	Qhk0sidmtXX0wpcg+dB+qS/aqEGe01j5Nm7guHY/pqmJSEPUglONWFxFJUBWyjtFJNqPwelDhmj
	MGFzlZutQZatBgeKGX7/dzohT1TLMPeqaApVp1O+RXTPj9YarsPTK1JyIT156n3xm6E/xqpDG1s
	eEjIn39MmguG8eE9FnzHJjEgaj3hNhDU9FiJeF3WHpiRbmSYKuLAKd9vxBJbSy4M6mIG9XarAus
	nMXKp3XoIZTcP4SMEPc/6XjQScMjhf04ZYYOZx6ruCnaQ7ONLMPsy3ZI/g==
X-Received: by 2002:a17:907:d91:b0:c25:5faf:b207 with SMTP id
 a640c23a62f3a-c2aadcf4484mr194861466b.3.1790167245181; Wed, 23 Sep 2026
 05:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922195006.79890f24@kernel.org>
In-Reply-To: <20260922195006.79890f24@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 23 Sep 2026 20:40:33 +0800
X-Gm-Features: AclHuK-io9PS85iIjo2RRKD7nlxq4FY18LSW8xzP9gnGJLLZJesN4MppzV2qPUE
Message-ID: <CALj3r0hH6m7jUEweKMWGmCW9aOxShaqsV0E+z4ztBhXbJ+378w@mail.gmail.com>
Subject: Re: [PATCH net-next v10 00/11] net: pcs: add basic support for RK3568 XPCS
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_054047_321077_13CE3F48 
X-CRM114-Status: GOOD (  10.78  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgyM+aXpeWRqOS4
iSAxMDo1MOWGmemBk++8mgo+Cj4gT24gV2VkLCAyMyBTZXAgMjAyNiAwNDowMzoyNCArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9y
dCBmb3IgdGhlIFJvY2tjaGlwIFJLMzU2OCBTb0MKPiA+IHVzaW5nIHRoZSBpbnRlZ3JhdGVkIFN5
bm9wc3lzIERlc2lnbldhcmUgWFBDUywgYWxvbmcgd2l0aCBuZWNlc3NhcnkKPiA+IGZpeGVzIGFu
ZCByZWZhY3RvcmluZyBpbiB0aGUgc3RtbWFjIGNvcmUgYW5kIFhQQ1MgZHJpdmVyLgo+Cj4gUGxl
YXNlIHNsb3cgZG93biB3aXRoIHRoZSByZXBvc3RzLgo+IE5vdCBtb3JlIHRoYW4gMiBhIHdlZWss
IGFuZCBwbGVhc2Ugd2FpdCBmb3IgdGhlIEFJIHJldmlldyB0byBmaW5pc2gKPiBhbmQgYmUgcHVi
bGlzaGVkIGJlZm9yZSB5b3UgcmVwb3N0LgoKVW5kZXJzdG9vZCwgc29ycnkgZm9yIHRoZSBub2lz
ZS4gSSdsbCBrZWVwIHJlcG9zdHMgd2l0aGluIHRoZSBsaW1pdCBhbmQKd2FpdCBmb3IgdGhlIEFJ
IHJldmlldyB0byBiZSBwdWJsaXNoZWQgYmVmb3JlIHJlcG9zdGluZyBmcm9tIG5vdyBvbi4KCkNv
aWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
