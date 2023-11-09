Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62A8FC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQmryI8474wDXlHRmB6HF6bgJ4RhpfkhmDamYM5764A=; b=tNxXrIrLjoTKYK
	QwfW5KHxxD3dt0VSA5IYgExtqxafQN7Rew+WIrb4ELSsr+UHIfuhjma1RtBZpOyycIxytH710qtD1
	LTrT1xMPLgl+vNiaIOevQOJxwNa3grAsJZju0qA5LjOdMu6LYq/03SjTlxKZRkAAYeGUs/HM0INrg
	og56wVjCD35L/kZiNViGxxRSo8ah5kAqovlUWn0m5/IhsxIu7IrY3wZqCu8eixwdAJHSJcwV+e6s+
	oSxPAXuV2Rrl+/z7QH+1luGMrAr1QKdOqBTQqOcq2o140P5AVUUfA+CVRiEEtwvbhR8HDvFIcjmHH
	S5dZ89ReYwHzQMEAYHEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1181-005kTM-2q;
	Thu, 09 Nov 2023 09:15:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r117y-005kRp-1d;
	Thu, 09 Nov 2023 09:15:07 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5C94E6607410;
	Thu,  9 Nov 2023 09:15:03 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699521304;
	bh=v6qhMPzD3AxhVLNdjEZEwQC9jr/N3DTQuFfeuL9ykAQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JwQPjKXgXSae+rmdVkYXy9Jb9REL0PVt245rWOXj5AX6uhQegs1Ie+oT+0O3N7XLU
	 tr/iuuM+Ecv/lA+ir8EK0wLUEmjKOYNYo1GEXeY2p3OAN4Z2aM2ME4oWRPvYvbiPGS
	 rCmzMlyyV9Klms6we5pFJ9nAv6DCMj2UblhLOoMoSTWNXX8DVJxOAnFipvhPbjSXEZ
	 Qry09Y3zgauyBMD7vOGN7qTQoTqNbvkD+WjOoxMI8Pct+GC6MyF+ulwXODKU4Y7f4d
	 QNTcn/K1B79HY3vjJMc66wF8TGtsToEYhhksphBidYaf5s43tHWWz3HYky0KjFtpsT
	 3YhoHVPhzQbBg==
Message-ID: <63fcdcfb-83a1-4ca9-af35-be643c02b455@collabora.com>
Date: Thu, 9 Nov 2023 10:15:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 12/56] media: mediatek: vdec: Remove useless loop
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-13-benjamin.gaignard@collabora.com>
Content-Language: en-US
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-13-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_011506_676708_FF078CCF 
X-CRM114-Status: GOOD (  12.37  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFNp
bXBsaWZ5IGNvZGUgYnkgcmVtb3ZpbmcgdXNlbGVzcyBsb29wIGJ5IHVzaW5nIHZpZGVvIGJ1ZmZl
ciBpbmRleC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4u
Z2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBBbmRyemVqIFBpZXRyYXNpZXdp
Y3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPiBDQzogQmluIExpdSA8YmluLmxpdUBtZWRp
YXRlay5jb20+Cj4gQ0M6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+
Cj4gLS0tCj4gICAuLi4vbWVkaWF0ZWsvdmNvZGVjL2RlY29kZXIvdmRlYy92ZGVjX3ZwOV9yZXFf
bGF0X2lmLmMgICB8IDkgKystLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL21lZGlhdGVrL3Zjb2RlYy9kZWNvZGVyL3ZkZWMvdmRlY192cDlfcmVxX2xhdF9pZi5jIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay92Y29kZWMvZGVjb2Rlci92ZGVjL3ZkZWNf
dnA5X3JlcV9sYXRfaWYuYwo+IGluZGV4IGUzOTNlM2U2NjhmOC4uNjlkMzdiOTNiZDM1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvdmNvZGVjL2RlY29kZXIv
dmRlYy92ZGVjX3ZwOV9yZXFfbGF0X2lmLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L21lZGlhdGVrL3Zjb2RlYy9kZWNvZGVyL3ZkZWMvdmRlY192cDlfcmVxX2xhdF9pZi5jCj4gQEAg
LTE2OTUsMTMgKzE2OTUsOCBAQCBzdGF0aWMgaW50IHZkZWNfdnA5X3NsaWNlX3NldHVwX2NvcmVf
YnVmZmVyKHN0cnVjdCB2ZGVjX3ZwOV9zbGljZV9pbnN0YW5jZSAqaW5zdAo+ICAgCQlyZXR1cm4g
LUVJTlZBTDsKPiAgIAo+ICAgCS8qIHVwZGF0ZSBpbnRlcm5hbCBidWZmZXIncyB3aWR0aC9oZWln
aHQgKi8KPiAtCWZvciAoaSA9IDA7IGkgPCB2cS0+bnVtX2J1ZmZlcnM7IGkrKykgewo+IC0JCWlm
ICh2YiA9PSB2cS0+YnVmc1tpXSkgewo+IC0JCQlpbnN0YW5jZS0+ZHBiW2ldLndpZHRoID0gdzsK
PiAtCQkJaW5zdGFuY2UtPmRwYltpXS5oZWlnaHQgPSBoOwo+IC0JCQlicmVhazsKPiAtCQl9Cj4g
LQl9Cj4gKwlpbnN0YW5jZS0+ZHBiW3ZiLT5pbmRleF0ud2lkdGggPSB3Owo+ICsJaW5zdGFuY2Ut
PmRwYlt2Yi0+aW5kZXhdLmhlaWdodCA9IGg7Cj4gICAKPiAgIAkvKgo+ICAgCSAqIGdldCBidWZm
ZXIncyB3aWR0aC9oZWlnaHQgZnJvbSBpbnN0YW5jZQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
