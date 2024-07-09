Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E0E1C3271E
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cG7mi+MQoP4T6yOpV1F+u9Z/TvHjk5F8AGbJMhe73ho=; b=oUVCquSFiG59ko
	6DdNiY/yjZoCodNfz1TWhVKuCjsvWE4TyE9kErHEE4wxVUqu5jS+Z8gkN1a0eREnrWRi6Tt7Z5HWM
	aGwfKlkNVAG2NWMxTVL9l/P4bIonw8Zfu+bRzTU1kKDWIZ9bpMtbNHDBL2ZXY9SGyPrxwDu5Ojone
	bFyPiBxRWsK7xgh7NXBLUESShmekOhOwNdaxy2IfUZz8UAoOxRgh1niRUeQKdPgKAI9+IqNhU8Lfr
	IquQipbKKSWSBWAQcbUdy6DlYJcY/veQcfWyqZx5aDvezfC4L0QRKgPXbHOa0P3evWpnZUcPVuw6X
	a8CjVmPzpXF3JeHPsHWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR1BO-00000005hQf-3OsW;
	Tue, 09 Jul 2024 03:06:22 +0000
Received: from mail.eh5.me ([2001:19f0:7001:3edf:5400:4ff:fe32:f2e0])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR1BL-00000005hPo-3V1U
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jul 2024 03:06:21 +0000
Message-ID: <7a2641f7-c928-4554-a795-e14dd4f644fa@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1720494375;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zOlQzjPfqQEoAu/17qqVmvIdZohaFYiJsL0crcNVu+U=;
	b=hPIsdt7dggTT1neORp5CwvLKQj7upS1WRM9vRi/GsLPiEu7EvRwNjReHY5bv1nVxmWwYeC
	POYDI4kx7HIEYP4TGiom8QWUklnIDoZ6zI4Emmp/YHmbAirRffCR/VL8N2tUeCaR1TJ0Lq
	3ZxucltasEYB/msloTNchf2EWRmxwH8=
Date: Tue, 9 Jul 2024 11:06:06 +0800
MIME-Version: 1.0
Subject: Re: RK3328 / Rock64 eMMC regression
To: richard@kojedz.in
Cc: Heiko Stuebner <heiko@sntech.de>, Linus Walleij
 <linus.walleij@linaro.org>, linux-rockchip@lists.infradead.org
References: <c76c10dbb3e614b17a1879f3aa767b8b@kojedz.in>
From: Huang-Huang Bao <i@eh5.me>
Content-Language: en-US
In-Reply-To: <c76c10dbb3e614b17a1879f3aa767b8b@kojedz.in>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_200620_003576_D440A9A8 
X-CRM114-Status: GOOD (  12.53  )
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

SGkgUmljaGFyZCwKCkkgdGhpbmsgSSBoYXZlIGZpZ3VyZWQgb3V0IHdoZXJlIHRoZSBwcm9ibGVt
IGlzLCB0aGUgd3JvbmcgSU9NVVhfV0lEVEhfCmZsYWcoMCkgY2F1c2VkIGFsbCBwaW5tdXggb2Zm
c2V0cyBhZnRlciBHUElPMi1CIHRvIGJlIGNhbGN1bGF0ZWQgd3JvbmcuClRoZSBwYXRjaCBiZWxv
dyBzaG91bGQgZml4ZXMgdGhlIGlzc3VlLgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9w
aW5jdHJsLXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jCmlu
ZGV4IDNmNTY5OTFmNWI4OS4uZjZkYTkxOTQxZmJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BpbmN0
cmwvcGluY3RybC1yb2NrY2hpcC5jCisrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tj
aGlwLmMKQEAgLTM4MTMsNyArMzgxMyw3IEBAIHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfcGluX2Jh
bmsgcmszMzI4X3Bpbl9iYW5rc1tdID0gewogICAgICAgIFBJTl9CQU5LX0lPTVVYX0ZMQUdTKDAs
IDMyLCAiZ3BpbzAiLCAwLCAwLCAwLCAwKSwKICAgICAgICBQSU5fQkFOS19JT01VWF9GTEFHUygx
LCAzMiwgImdwaW8xIiwgMCwgMCwgMCwgMCksCiAgICAgICAgUElOX0JBTktfSU9NVVhfRkxBR1Mo
MiwgMzIsICJncGlvMiIsIDAsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwKKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBJT01VWF9XSURUSF8yQklULAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIElPTVVYX1dJRFRIXzNCSVQsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgMCksCiAgICAgICAgUElOX0JBTktfSU9NVVhfRkxBR1MoMywgMzIsICJncGlvMyIsCgoKUGxl
YXNlIGxldCBtZSBrbm93IGlmIHRoaXMgd29ya3MuIEkgd2lsbCBzZW5kIGEgZm9ybWFsIHBhdGNo
IGxhdGVyLgoKU29ycnkgZm9yIHRoZSBpbmNpZGVudCwKQmFvCgpPbiA3LzgvMjQgMDI6NDUsIHJp
Y2hhcmRAa29qZWR6LmluIHdyb3RlOgo+IERlYXIgZGV2ZWxvcGVycywKPiAKPiBJIGFtIHVzaW5n
IGEgUm9jazY0IGJvYXJkIHdpdGggYW4gZW1tYyBtb2R1bGUuIEkndmUgdXBncmFkZWQga2VybmVs
IGZyb20KPiA1LjE1LjE2MSB0byAuMTYyLCBhbmQgc2luY2UgdGhlbiB0aGUgYm9hcmQgd29udCBi
b290IHVwLiBLZXJuZWwgbWVzc2FnZXMKPiBzaG93Ogo+IAo+IFvCoMKgIDQ5LjExNzEzMV0gbW1j
MTogc3dpdGNoIHRvIGJ1cyB3aWR0aCA4IGZhaWxlZAo+IFvCoMKgIDQ5LjEyNDcwOV0gbW1jMTog
bW1jX3NlbGVjdF9oczIwMCBmYWlsZWQsIGVycm9yIC0xMTAKPiBbwqDCoCA0OS4xMjUxOTBdIG1t
YzE6IGVycm9yIC0xMTAgd2hpbHN0IGluaXRpYWxpc2luZyBNTUMgY2FyZAo+IFvCoMKgIDQ5LjEz
OTU2Nl0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gMzAwMDAwSHogKHNsb3Qg
cmVxCj4gMzAwMDAwSHosIGFjdHVhbCAzMDAwMDBIWiBkaXYgPSAwKQo+IFvCoCAxMDUuNDM3MTEx
XSBtbWMxOiBzd2l0Y2ggdG8gYnVzIHdpZHRoIDggZmFpbGVkCj4gW8KgIDEwNS40NDY3MzldIG1t
YzE6IG1tY19zZWxlY3RfaHMyMDAgZmFpbGVkLCBlcnJvciAtMTEwCj4gW8KgIDEwNS40NDcyNDZd
IG1tYzE6IGVycm9yIC0xMTAgd2hpbHN0IGluaXRpYWxpc2luZyBNTUMgY2FyZAo+IFvCoCAxMDUu
NDYxNjM5XSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSAyMDAwMDBIeiAoc2xv
dCByZXEKPiAyMDAwMDBIeiwgYWN0dWFsIDIwMDAwMEhaIGRpdiA9IDApCj4gCj4gSSBhbSB1c2lu
ZyByazMzMjgtcm9jazY0LmR0cyBmcm9tIHRoZSBrZXJuZWwuCj4gCj4gQmlzZWN0aW5nIHRoZSBr
ZXJuZWwgcmV2ZWFsZWQgOTY5MDNlZDBlODQ2IGFzIGZpcnN0IGJhZCBjb21taXQuCj4gUmV2ZXJ0
aW5nIHRoaXMgY29tbWl0IG9uIHRvcCBvZiB2NS4xNS4xNjIgbWFrZXMgbXkgYm9hcmQgYm9vdHVw
IGFnYWluLgo+IAo+IENhbiB5b3UgcGxlYXNlIHRha2UgYSBsb29rPwo+IAo+IFRoYW5rcyBpbiBh
ZHZhbmNlLAo+IFJpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
