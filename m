Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B20C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 12:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHVAL1ykZxHc7/mRIYoYZQ+X49eZXK8sAm/Rsa4Db1s=; b=g7Bfg+cxrxxP25
	kPMX9xG2AdW66vLTxIsYp4fxk4xx0JRONGB2Mnlt/6MqDIeMiwYYT8bgg62o6rnG9z0pDu3mFwB3G
	d0D8GUYAB9HivvqzF1CxJY3qGOsTT46XbPfSFNnwqL5Sb1OnboT9nlZpBFETXbe7X11IiwpG708Qi
	tJ3HSHPzJQFSiYWR6IDa0HuJFGHiszJhLkhfH8/BFwZfYEfFmoaf6IIpL2z/tTnycqP9Sn4vHPDH9
	j27KC5gz8Amz1JeUM2ZFEo1oWnC2aR8pA0JrOvQZItkLFshAsYhQPa476mL+7+WTzcRCU0430iCFf
	WyBqumtGIXI8m1Yk2WiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r14Ct-006KJD-0F;
	Thu, 09 Nov 2023 12:32:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r14Cp-006KI8-1P;
	Thu, 09 Nov 2023 12:32:20 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E413F660748C;
	Thu,  9 Nov 2023 12:32:16 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699533138;
	bh=CpA/2/kD4qcNpyp13EzsdiW7+wPb7nwcHMs4TrdTlPY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VG9jaJfee09CBJlAsZ9G49FVSwS4gpIKvGJFvz3xSVO3nMCiJfugB529ZIWo307Xg
	 nc/YsgO0JJwm2JXNB0NnhUy4RYA3ABKWSa5HBMBLXy8ZeFyoUBYlOTXUCScK+Fq93d
	 kUX49yZPZCCdjHK/+5kMctDTiQkaZ1+hHGRaM31Xf6k8iU6ftXiryfPvVLdl5J8PzZ
	 qcXODVgm0KCNN39qFheU2gxHiwHVuObEyEqJmWyfTikgjwgPAKIRV4L99omHetcXVh
	 Psedi0mR+cu0udL9bEg936s7TgxzxLiz7PEwzspq8++ezuuI7Px9ls4A6P2dTU/wSo
	 Fqr/FMwUFbwig==
Message-ID: <38319779-41ba-4e1e-9e05-1bd1b6c595ef@collabora.com>
Date: Thu, 9 Nov 2023 13:32:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 46/56] media: test-drivers: vicodec: Increase max
 supported capture queue buffers
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-47-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-47-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_043219_606259_D1475111 
X-CRM114-Status: UNSURE (   9.54  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IEFs
bG93IHRvIGFsbG9jYXRlZCB1cCB0byA2NCBidWZmZXJzIG9uIGNhcHR1cmUgcXVldWUuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxh
Ym9yYS5jb20+CgpSZXZpZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBA
Y29sbGFib3JhLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aWNv
ZGVjL3ZpY29kZWMtY29yZS5jIHwgMSArCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdmljb2RlYy92
aWNvZGVjLWNvcmUuYyBiL2RyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpY29kZWMvdmljb2Rl
Yy1jb3JlLmMKPiBpbmRleCA2ZjBlMjBkZjc0ZTkuLjY5Y2JlMmMwOTRlMSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aWNvZGVjL3ZpY29kZWMtY29yZS5jCj4gKysr
IGIvZHJpdmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdmljb2RlYy92aWNvZGVjLWNvcmUuYwo+IEBA
IC0xNzE4LDYgKzE3MTgsNyBAQCBzdGF0aWMgaW50IHF1ZXVlX2luaXQodm9pZCAqcHJpdiwgc3Ry
dWN0IHZiMl9xdWV1ZSAqc3JjX3ZxLAo+ICAgCQkJVjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJF
X01QTEFORSA6Cj4gICAJCQlWNEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRVUkUpOwo+ICAgCWRzdF92
cS0+aW9fbW9kZXMgPSBWQjJfTU1BUCB8IFZCMl9VU0VSUFRSIHwgVkIyX0RNQUJVRjsKPiArCWRz
dF92cS0+bWF4X251bV9idWZmZXJzID0gNjQ7Cj4gICAJZHN0X3ZxLT5kcnZfcHJpdiA9IGN0eDsK
PiAgIAlkc3RfdnEtPmJ1Zl9zdHJ1Y3Rfc2l6ZSA9IHNpemVvZihzdHJ1Y3QgdjRsMl9tMm1fYnVm
ZmVyKTsKPiAgIAlkc3RfdnEtPm9wcyA9ICZ2aWNvZGVjX3FvcHM7CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
