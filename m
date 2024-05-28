Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED2AC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 11:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCNffi3Di8M2CaZ8zdTNSzqslfh8bdB3H5Pehw0AEmc=; b=e1kdnILu92r0lv
	m752eOq84H0u7ZpOwY/cCBXXqluP5mjjlUbZCX0hKVkXnP9phKO2h5D2dKCOjJs56ZoWSg1tg3O7d
	cbHPUMkGM7mBa9gMxh5BDu96YBzjhPnQMRcCqaqP+a94mfYsRG036D3Z2hX5YgW6uFgt1cnmVbiGe
	TRmxWDzdx54nuYvbnPC3jLy5RzTP+jSgycSmQV2uH9SiJ4EMG7sod9Yej/MR4gt9GtGjOWW6xq1Qx
	LSg3kdX/h57YaYDYAJC9++6JFq7bq4+XcEgAXrEw9BYCyrmfiUkEWKTzsae1t0ZjAZMg4jCbSnZ5A
	IcTYxvpkDF6UOJmcLJAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBv1E-00000000MNW-0GjJ;
	Tue, 28 May 2024 11:29:28 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBv1B-00000000MMb-3qKQ
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 11:29:27 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-df79380ffceso1779860276.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2024 04:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716895764; x=1717500564; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HrLuMk+QemkYNFhy0HrMjcUhynlD+skk3KpAQxbcfcU=;
        b=bVvzB594uM9j8SFtkeBTW2E4W3SpvzMjGadLjvDorWTStKVRqfNUcW3l8Sz+5SMQSd
         T/r8WUHsjrUn4CQ9H/DzzfG+6S0s29PeGAOJtdEXE3RpsqPVMRGILMbj6F41GFcqRJsO
         0/n/9rEgYgEcd1fBXx7J5L3IvuRFyi3Z89r/ebl9KB9hHgbyEGqjFh9AipgfJDUNQKAc
         ASoOD/H2X+6T1fvrXCmm/pZPHJ89Kvq1hsvVKnBQtSFterETWpqWZz+TRTSacFWMryZ6
         3mQhv3zjUyujf3B9piw03hSjJaKZIsPyLK5lMIvoYXHENV66lksRIGn5icpMVBV0O+jB
         zMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716895764; x=1717500564;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HrLuMk+QemkYNFhy0HrMjcUhynlD+skk3KpAQxbcfcU=;
        b=vUKD6xs7ydlehx2/467qj7y5mn4wRSfj/5ElBfBhvSb6NM7iYloFoHRcq8tCx4G9gk
         qKrTVzKTlskSkl8DesqTiYx0P6ufSzKgsqDZX15ZXku8keUCQPzNllh/yL4pBdTHaLiO
         zaQlM1FMFYzCLhDexH4TonE4xq8K+NIkDOgMkC/SBIBPzXw/16vdoDrrm1n9AbwJ36hO
         qRdLtDjSTHf/pgwU6vQ+5w4+X7zk1FAFrdjwMcAMA0ap4J8BHz6WxLNig4kjNyHSf7II
         xTeHyXd9SlHmaIoqfTBOkLka0XdNsu175QC7wZIKwbTtmNl4KBFRrjKbS1BW7wS0y3Pu
         5iyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgBljvTt9nopQ9zFR598uLX/VpTuqm+GAOXOO9BzSHiqV37Od3wstAr3u8DXNREoBwKYag/H49ZQxdploUIEAHxrjs/oNVUuU41gXQOznqSsUV
X-Gm-Message-State: AOJu0Yy8tlBgA4Q6tuObga7TamRhAdR2MmQz90W4AIznDzuCSifot39H
	UYafl8WBcRbJ2KLwWOU1NKsnk6cl80KWxCTdWuTrDOzL+iul23BvA5g/bQfrdva0LELEArNmUEh
	UFQ7tvUkBzxInsgf929zmfYZcUUe/yViz6L/DQw==
X-Google-Smtp-Source: AGHT+IEk6wsE6F4jE8aDIDCXOolP04kWcVWKcPIVc0WwOa4C3mfNwJ2alb6IUhDHtVxsQ6/JzHOzIjBnpoOasKo/B/o=
X-Received: by 2002:a25:bdcb:0:b0:df4:e4fc:16a0 with SMTP id
 3f1490d57ef6-df542239ee2mr11528398276.13.1716895763808; Tue, 28 May 2024
 04:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240515121634.23945-1-dmt.yashin@gmail.com> <20240515121634.23945-2-dmt.yashin@gmail.com>
In-Reply-To: <20240515121634.23945-2-dmt.yashin@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2024 13:29:12 +0200
Message-ID: <CACRpkdYO_zr=OEZCv8LKtw+fNOwJ906ZVKyPhbbyA=9gP5XQgg@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: update rk3308 iomux routes
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Jianqun Xu <jay.xu@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_042925_978363_FB9538E0 
X-CRM114-Status: UNSURE (   9.96  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBNYXkgMTUsIDIwMjQgYXQgMjoxN+KAr1BNIERtaXRyeSBZYXNoaW4gPGRtdC55YXNo
aW5AZ21haWwuY29tPiB3cm90ZToKCj4gU29tZSBvZiB0aGUgcmszMzA4IGlvbXV4IHJvdXRlcyBp
biByazMzMDhfbXV4X3JvdXRlX2RhdGEgYmVsb25nIHRvCj4gdGhlIHJrMzMwOGIgU29DLiBSZW1v
dmUgdGhlbSBhbmQgY29ycmVjdCBpMmMzIHJvdXRlcy4KPgo+IEZpeGVzOiA3ODI1YWViN2IyMDgg
KCJwaW5jdHJsOiByb2NrY2hpcDogYWRkIHJrMzMwOCBTb0Mgc3VwcG9ydCIpCj4gU2lnbmVkLW9m
Zi1ieTogRG1pdHJ5IFlhc2hpbiA8ZG10Lnlhc2hpbkBnbWFpbC5jb20+CgpXaGlsZSB5b3UgZ3V5
cyBhcmUgdGhpbmtpbmcgYWJvdXQgdGhlIFJLMzMwOEIgc3VwcG9ydCwgaXMgdGhpcyBmaXgKc29t
ZXRoaW5nIEkgY2FuIGp1c3QgYXBwbHk/CgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
