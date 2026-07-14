Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A5C4C44508
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 17:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AQU7tyRfJlVb+flaGJ2WXjyE0I8ZE6H5pAfH3pjEe8=; b=Sm38MyIyJT6f0c
	8O2m6oiRlWVbykxOfatrmZtobL9IMR0P+vi3o2GnSyuuYKJKUB1OTesYysj7WGCOt6XiIbugNPGri
	GEP7mdCEHk0nNT+1ZoJ4Obi7qBLZvrGFPVeckVtxoS6er+tTsX1+DUPt1pReS6JmItnCBH1Z6TAKb
	trCd1RAeIstDcfM/gAosVgK037y5NMjbm7qlzLXlJk8nAOs8OFWksUn95csVilfQBtxE0fdZ/eNBZ
	zsmlqqVroMsIS4jt7gOxbOkv/YAOFzESh8xRNeXzQGIrsiFqcb8955lHBG1z25+LDfDD2Ac6bTK6z
	pJx7wFYNPC4n+brfxdPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjguJ-0000000ClYY-3ojV;
	Tue, 14 Jul 2026 17:26:59 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjguG-0000000ClXG-0uLr
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 17:26:58 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-698bf053053so1893592a12.3
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 10:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784050013; cv=none;
        d=google.com; s=arc-20260327;
        b=AIlSVd2tcEv656a+ZPHfS3R5REVw+TIJmZw7VRAdT16NKt57WFYWHkZR34m0j8ywX4
         RTgVWcvxavWj8IVKKryQveQUZ/Kc3fMhDLIRSM9axpqJdObXw7Caxb7QxsF2d1BrbXbG
         1SC/BtoUZNqY3C79Xur2qkqldBKz1ne/sJrZ0XvVyvSe4R/B2DebOjlgorYOHkk+YeAO
         CcvNW4DV+cXPr8NOy89K0vChpgTcGegW3GSJzPlVG8D5+L0xpvHAlLYjkGz0VYQQQ5zK
         +NHXjyjMjoSJHDozplvgZ6doJ85tHcCc8h4DXgofTs3beh0lKBVUZR5cmIDaZmVXPz/E
         JCQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PLWXlp5fp1shTIcjuREf1LDdbeNLz9T5kczHBwu0iIg=;
        fh=4NO41WkNbHUvcycriAQKl2Rd6CcbYNyjpmfPlWhuaeo=;
        b=i7MsMcVUTf9eDCYzA6UEKomYPEm6Ky52h+Q6Jd92wNr6DD7UDoPBXK/3vIXXeY3jYx
         CdaozHdfoSLxwhfDN21qYQVOLdCKiagg0vJkq3LW7/0GME5HaaS4hXInEXtjJqq9dOA6
         8h7ytAq6T3gqrgICZ3/BBFLGd0otLTLEnsBKOqQXNRrY3DPiLKb1/HUpU7O/Xz2w95jF
         g9zJz5W54MV5zaOtq/CTbJE/lawIQsGdsZYQG8dXYebPAkMyFcZteCxJHqQyGb6wsDX8
         FqHo8OoWl8ukufhZmDF2YQMetfgP6fawlZzVAG1fzfck14NFqgXar8oQ2MF9kuXUpzpd
         eNnA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784050013; x=1784654813; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PLWXlp5fp1shTIcjuREf1LDdbeNLz9T5kczHBwu0iIg=;
        b=cqTmbD6oPel7i4dkJC2nEa4cGDFuWhiWl6UORsvlaHrLq5X+9IiJirHVFL3wWMuNLz
         h2JII7Q9UoQx6GPwDAnP+0oB0kdnJxouy1pCR9iwX+SMRHFkvT2WTrvzhAV0qWlGZAp4
         8Oswk/A84I05Tf431+EmPAG3SmKQ2BnUMIaXMPCPNv7NTfg62XvugxymKZahqYzMeXmV
         RP50TxmNuSirP8bfACeYoJmmSHkkIaBUy9YaGCgQTCpGmt/7xwtPk7OA4p4jxZnXA7h3
         Vnmeokfi1ZHVa4TdMZD2bzc5MVCgWfPYupM2RtJFbAyCBekY7MY3kJThMMuhPDsJLyua
         DbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784050013; x=1784654813;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PLWXlp5fp1shTIcjuREf1LDdbeNLz9T5kczHBwu0iIg=;
        b=mV1/izTpgC2q1a2ItL2gywpKRIZ7mS8HYLyHAaynjh4/aEir/HFOwxX5RZTPA4qlHq
         vP4lb6NuELYE6ra/cqF4AFG57EW/hqedOHsQUe+q+4aLkAuKQzyJJjNmghazfg5n3t+J
         pbCgU+Ye4g1yayv/FRpS1sogelGhZ88Vi7LCMspvhKMZieL3GANjzkhHSv9dE16UVSgh
         afbJsBFeaI8KrgT04DQCoDxUYD0cB551ychyK2oltANJ3LukiQZl+sSM1IJxntdWdjGn
         cT2MJ0e4ZIqWuo5zNhC/bwTdZjBpuUHPGpXznrhBIcfnavielrz9OZNSoeowOrC9pRrz
         5Y8A==
X-Forwarded-Encrypted: i=1; AHgh+RperQUL95RJU+37uwJpSv2YAAcctfktDi/M2RKySSM2Njse3AYj50K9hz1c9afFRdIG6Z/f99/v2s8XdtAvmA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6qGes826g5W389AnyYUVoB1smS6Wqd4r1rnqAbAxkoe+OY+do
	p12iUPA1ZBMCQrAucSZ33E83t9coQyxzAv8s+6tCctb1I6dOziwzVmBbL/tNJtCvy39+j1keih8
	aJyxMSlYXsRbgp67RjCiRbS1f7kszHUMkhgf3yLmM5Yng6SftMO9pMKZID0QV
X-Gm-Gg: AfdE7cm/wyuPqq9cpZOEZxAy69te+ymO2BMtKmuxYXd7Jx9d8QjLkrOPHOQwqZMGtZd
	+qba8OUGoyzB86PkHrkG7gytiDbAdTFJAnHo7Nrid6BENEWXxpYCntrJcLTDxwsnSQ6kRikQUOs
	JD8wV9D6KKeSLT9Al2y1mW/y6iGo8IGvm2FhgBpgkBsJf+Jc+L4Z46Q5DhrxQavLEsENm/24N4v
	5j9uhlHug+bc6Lpa8vC234kcWYwCIwZf7eWdqLvi6EhhFPh6UckcCXCoawxDf8ZYf3c5lbn5oc0
	VqFRaSJSFfJiKKeBDBIHXtItOjE=
X-Received: by 2002:a17:907:7210:b0:c12:61c5:c141 with SMTP id
 a640c23a62f3a-c161ea21391mr577764066b.53.1784050013253; Tue, 14 Jul 2026
 10:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <MN0PR19MB609171877109E10553B5DB5EACF92@MN0PR19MB6091.namprd19.prod.outlook.com>
In-Reply-To: <MN0PR19MB609171877109E10553B5DB5EACF92@MN0PR19MB6091.namprd19.prod.outlook.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 14 Jul 2026 21:26:42 +0400
X-Gm-Features: AUfX_my4WyuEyYSRptLwrCR_TmeHbnjRc7E_6wyzD01sMWP4nnwK47T7aZfKKfg
Message-ID: <CAKTNdwFxW9aGk3Ux_DhCvhYcwUBEz=oEei+w=9Zo-78jgGtGWQ@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Set RK3576 USB3 SSC downward
To: Liu Changjie <liucj1228@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_102656_335855_6B29AB37 
X-CRM114-Status: GOOD (  15.28  )
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

T24gVHVlLCBKdWwgMTQsIDIwMjYgYXQgMTA6NDbigK9BTSBMaXUgQ2hhbmdqaWUgPGxpdWNqMTIy
OEBvdXRsb29rLmNvbT4gd3JvdGU6Cj4KPiBQcm9ncmFtIHRoZSBSSzM1NzYgVVNCMyBzcHJlYWQt
c3BlY3RydW0gZGlyZWN0aW9uIHRvIGRvd253YXJkIGJlZm9yZQo+IGFwcGx5aW5nIHRoZSByZW1h
aW5pbmcgUEhZIHR1bmluZy4gVGhpcyBtYXRjaGVzIHRoZSB2ZW5kb3IgQlNQIFNTQwo+IGRpcmVj
dGlvbiBhbmQgZm9sbG93cyB0aGUgZXhpc3RpbmcgUkszNTY4IGhhbmRsaW5nIGluIHRoaXMgZHJp
dmVyLgo+Cj4gV2l0aG91dCB0aGlzIHNldHRpbmcsIGEgSElLU0VNSSBNRDIwMiAoMGJkYTo5MjEw
KSByZXBlYXRlZGx5IGZhaWxlZAo+IHRvIGFjY2VwdCBhIFVTQiBhZGRyZXNzIG9uIGFuIFJLMzU3
NiBUYWlzaGFuIFBpIDNNLiBXaXRoIGl0LCB0aGUgc2FtZQo+IGRldmljZSBlbnVtZXJhdGVzIGF0
IDUgR2JpdC9zIGFuZCBjb21wbGV0ZXMgYSA2NCBNaUIgcmVhZC93cml0ZSB0ZXN0Lgo+Cj4gQSBz
ZXBhcmF0ZSAxIEdpQiBzdHJlc3MgdGVzdCB3aXRoIHRoaXMgUlRMOTIxMC1iYXNlZCBlbmNsb3N1
cmUgc3RpbGwKPiBwcm9kdWNlZCBTdXBlclNwZWVkIHJlc2V0cyBhbmQgSS9PIHRpbWVvdXRzLiBU
aGlzIGNoYW5nZSBvbmx5IGFkZHJlc3Nlcwo+IHRoZSBpbml0aWFsIGxpbmsgYmVoYXZpb3IgYW5k
IGRvZXMgbm90IGNsYWltIHRvIGZpeCBzdXN0YWluZWQtSS9PCj4gc3RhYmlsaXR5Lgo+Cj4gU2ln
bmVkLW9mZi1ieTogTGl1IENoYW5namllIDxsaXVjajEyMjhAb3V0bG9vay5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jIHwgNSAr
KysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+IGluZGV4IDJi
MGYxNTJmNS4uMzI0YTA4NjFlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiBAQCAtMTAxNSw2ICsxMDE1LDExIEBAIHN0
YXRpYyBpbnQgcmszNTc2X2NvbWJwaHlfY2ZnKHN0cnVjdCByb2NrY2hpcF9jb21icGh5X3ByaXYg
KnByaXYpCj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+Cj4gICAgICAgICBjYXNlIFBIWV9UWVBF
X1VTQjM6Cj4gKyAgICAgICAgICAgICAgIC8qIFNldCBTU0MgZG93bndhcmQgc3ByZWFkIHNwZWN0
cnVtICovCj4gKyAgICAgICAgICAgICAgIHZhbCA9IEZJRUxEX1BSRVAoUkszNTY4X1BIWVJFRzMy
X1NTQ19NQVNLLCBSSzM1NjhfUEhZUkVHMzJfU1NDX0RPV05XQVJEKTsKPiArICAgICAgICAgICAg
ICAgcm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHByaXYsIFJLMzU2OF9QSFlSRUczMl9TU0NfTUFT
SywgdmFsLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUkszNTY4
X1BIWVJFRzMyKTsKPiArCgpUaGlzIGR1cGxpY2F0ZXMgY29kZSB3aGljaCBhbHJlYWR5IGV4aXN0
cyBpbiB0aGUKcmtfY29tYnBoeV9jb21tb25fY2ZnX3NzYygpIGhlbHBlciBmdW5jdGlvbi4KCkNv
dWxkIHlvdSBwbGVhc2UgdHJ5IGlmIFsxXSBmaXhlcyB5b3VyIHVzZSBjYXNlPwoKWzFdIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjYwNzE0LW5hbmVuZy1zc2MtZml4
LXYxLTEtMWM0MGE1ODA2MWFlQGZsaXBwZXIubmV0LwoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
