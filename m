Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2616BC27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 20:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhYpOF9hAfZFcoN9Qc7t3XbnXz30rnFl+RmrC654X7o=; b=Aqvgk4+vhC2x9c
	vE8ucZcPUyBFU73vbk1/2C5HvtUZS9e0AZ4x6iq+600bE6hxgnY3XjAHS9j9YrbK5H6BrHcCkUPzk
	K3xt3U7aesFdDe++TABSXxhnv1QjEqo5ANiCCirdZTY++uQ5Z73JWEddZZiLmHKyZMmgkuHfslnIl
	G+Fp5h6G33Q2czLFTOvNTcFogkD1OXX1gS0GzFzMyXkfGrETItYidLbrpNyzoXme0ZkhBHoIG04NS
	1DMnmJipclHMwFO0bvcg6fITJQxV8W0+n+iPeT4JCgiI0tRva9jjT35LsiHUU7crhDjeq4RNkqIib
	50M9elF2AeENZyVWVtkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJfjE-0000000GXcI-2yE3;
	Tue, 18 Jun 2024 20:46:56 +0000
Received: from mout.web.de ([212.227.15.4])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJfj4-0000000GXV6-0d4Q
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 20:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1718743596; x=1719348396; i=markus.elfring@web.de;
	bh=7SVn046GRXwum9/obUlRK64bfmhFkYAqL+r0he2hVC8=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=PZ3z2vaQG9aupKmIeFv80UHAofhbRE8SzMWlvGyOLT4JTk2ms2xfY/Etd1Wuj20R
	 yFFWFpw2H05Mh3HYyeeU3oqdqe1NbQbv8VPEHCANs4yWb4+S/9TEKhKLTCtZaASDn
	 mvoToayBJyRR1BrQX+gbCJ3zEvt9UR1Lk+H1MISn0JDQrZt+5AJbHtNz+Qj+rZDMY
	 KdSB1qdaiYgVXDx5JqosFb+57JfafH35oZtWOQD9r30jd7b+nfVTGleSAit+FvOfT
	 B5qHopxqzJ+N2psyBrMZZ8m8nWezDxF7nDXx9CKOyRD5sWn989kXI8BJo3n7K0WGd
	 nxkbZ55Zjnx37REdwA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N6sBv-1sROvz2ip5-00wTNH; Tue, 18
 Jun 2024 22:46:36 +0200
Message-ID: <2fed4937-e9ea-4635-a061-5c5a0533b152@web.de>
Date: Tue, 18 Jun 2024 22:46:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Huang <d-huang@ti.com>, Devarsh Thakkar <devarsht@ti.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Aradhya Bhatia <a-bhatia1@ti.com>, Brandon Brnich <b-brnich@ti.com>,
 Darren Etheridge <detheridge@ti.com>, Jai Luthra <j-luthra@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Nishanth Menon <nm@ti.com>,
 Praneeth Bajjuri <praneeth@ti.com>, Prasanth Mantena <p-mantena@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Vijay Pothukuchi <vijayp@ti.com>
References: <20240618193651.2771478-3-devarsht@ti.com>
Subject: Re: [PATCH v14 2/6] media: imagination: Add E5010 JPEG Encoder driver
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240618193651.2771478-3-devarsht@ti.com>
X-Provags-ID: V03:K1:wzwXm8OOJj/8pn6nEtnfr8d1OPM87N8PKLZGrJG7AtRwShPkJfv
 goefJPjAshUT3KsMHaSIJQDd0ojyS5GvAIHdR4fEZg8oMnlhxgvA1C0Kp+/7GyLJcG4BmUN
 AlRXIpUfvfLdxf5hn/SCicFgPKGdKOfDHCA7TNkkTDjXRjDrAOS9JjvNMmTJ6CUtdVorwKz
 K+2rGUcvcssXRacxWf/nQ==
UI-OutboundReport: notjunk:1;M01:P0:at3o+ErF39k=;WGKgmK/fxWBBs7JOx1gu5uwL1Fg
 w3dEk/evutMPDtSR9ATEgVKc6CMn8or+qhyyNtFQvevcSpMgGWPLm5DO6MiLJs/OqF+Evpdly
 6Mglv6FhKARWZuckuOr9Iybh5x4MqrVczmAvFNXh7WMgAepf0SSeKvU9OWhn4yNeUViLqRiwm
 A2+NpVJOL25KIkZtDY1LeSLkG6a/9cHTBBCNIEsQL/m9vg7U6UMmill9pFUxYRwNXkqKXhWOv
 xNhV7P82jnNjzhVXn8pddKZ4yPb8nutPAV3tB0r3CdMYUUVrfuhXQSFZ2qrA3eR6ZiN3XQJJy
 jNbbxHc710Y136fB2lylt8WVp4c8WBVNYF0E9HLHDz67vCcqqE2zaUTtL2Pe2KJnFI+5D1Gfb
 92ULx7M26WSsCvN34Bzegc5ZlXneYuI0EAU46kKbTlriaJjnrsbIgG519xAsIa6aM5UBotDLm
 L3pL4g0USy30zNYJFkdZMDhMdVbgAjgMF2UY+S0AHR5sq6O40vwwX3jxLS3oXuobDf2IDQAUG
 jkiECxQvpUlndBVrVaSoPGp/eTFgyCuY9oxb3V9AxT9oV+Qbv6rjIydlOXcMBcdUcfyzH+vNs
 6EIYp5rx+WBeEVGrYUdCpXEW0KqpPbWH5EMXB1oPsj6Tc1ILlGh4XHE0ZOTGDYeQJS5qDyO7e
 Si4782B0anEsqxL9qaKWRUJ//15GUlRcXnVM88qA0olrQ/4Bxmzbc9hJgIhLXaFEbLKZkTdZt
 ZWjyqmK4lVqx4M97OU/0MZg2mW7bn0gBGthEgmQ/5q4gnXFLUCf7zKxuZykOVvBZD3sD2AGSb
 yEEj4nCVqkAqSKcHHjMY6TaSLA3vooQmF06pjR9HljAY0l90sChdu9rf/Qi9oATSAf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_134647_069259_38DB57BE 
X-CRM114-Status: UNSURE (   5.71  )
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

4oCmCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9pbWFnaW5hdGlvbi9lNTAxMC1qcGVn
LWVuYy5jCj4gQEAgLTAsMCArMSwxNzQxIEBACuKApgo+ICtzdGF0aWMgaW50IGU1MDEwX3JlbGVh
c2Uoc3RydWN0IGZpbGUgKmZpbGUpCj4gK3sK4oCmCj4gKwltdXRleF9sb2NrKCZlNTAxMC0+bXV0
ZXgpOwo+ICsJdjRsMl9jdHJsX2hhbmRsZXJfZnJlZSgmY3R4LT5jdHJsX2hhbmRsZXIpOwrigKYK
PiArCWtmcmVlKGN0eCk7Cj4gKwltdXRleF91bmxvY2soJmU1MDEwLT5tdXRleCk7Cj4gKwo+ICsJ
cmV0dXJuIDA7Cj4gK30K4oCmCgpXb3VsZCB5b3UgYmVjb21lIGludGVyZXN0ZWQgdG8gYXBwbHkg
YSBzdGF0ZW1lbnQgbGlrZSDigJxndWFyZChtdXRleCkoJmU1MDEwLT5tdXRleCk74oCdPwpodHRw
czovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMC1yYzQvc291cmNlL2luY2x1ZGUvbGlu
dXgvbXV0ZXguaCNMMTk2CgpSZWdhcmRzLApNYXJrdXMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
