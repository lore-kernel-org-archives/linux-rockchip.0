Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D1D9D3B9AB
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 01:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTSpUUWFG1A1qMFRJl3BtP6t6WLtBiGYjBxUzGTcegs=; b=x+kxdRfxStk6Eb
	uzgcJtT882g2bj2/3eG699owNi3HuIgmGoETLyK3JpenVksTN3W68gACcxOXq/0NSo0RkZWBXQQiO
	A5bLodOI5+ANpvJNvKfpqaIVKT4Q0/IpAxrK+J1JOM/Zh5rm42ojAJIRxJV1SGqFHXiCZBkE1njvD
	wNX0u64ErXGdlxNM5mj1mVnAbd/Vm/uIF5GM+UNhGpgb18riH2mjIDNr6dljAQtRZlX8ohsuzqDzP
	hEo3gplN7AztBn9nwyaryg1O1KL8Wolceyq5bQEBT/SIxkvvxbv8vQQCuAXvAJ5iMLvNBbspqdoI9
	F0OvJBWHZ0eDKJuHxHFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTVgm-0000000G5qR-1Ruz;
	Thu, 11 Dec 2025 01:41:52 +0000
Received: from mail-m25468.xmail.ntesmail.com ([103.129.254.68])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTVgi-0000000G5pt-35gX
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 01:41:50 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2cc697844;
	Thu, 11 Dec 2025 09:41:37 +0800 (GMT+08:00)
Message-ID: <a35cdd13-0d34-458f-a298-4ed0625a3cae@rock-chips.com>
Date: Thu, 11 Dec 2025 09:41:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/2] PCI: dwc: Add L1ss context to ltssm_status of debugfs
To: Bjorn Helgaas <bhelgaas@google.com>,
 Manivannan Sadhasivam <mani@kernel.org>
References: <1764035632-180821-1-git-send-email-shawn.lin@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1764035632-180821-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9b0b12262f09cckunm1b35ac283f825
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpDH1YdQ0NCSBoYSxgaTR9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OsXE4wgvIWz0QX0b4VkoZB8JfzHbqDeyCC8mOb4rGHRtOvDMePd+vpVDx85shn8KQxKQk4ANcK4pk40RaTGKkvZlgTiPLGHivpX/dJu/9uLY9/Y3dB+fftVBZkluOFuBjSv7IUWbSJieLg00fkU4yQF7QruZ+K28GTUL+xMTkyg=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=XlDfFGFtAFZVLp+msSqrCU/WCcfPH09u01tgS94bf7I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_174149_339767_72A2CAB3 
X-CRM114-Status: GOOD (  13.77  )
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

5ZyoIDIwMjUvMTEvMjUg5pif5pyf5LqMIDk6NTMsIFNoYXduIExpbiDlhpnpgZM6Cj4gZHdjIGNv
cmUgY291bGRuJ3QgZGlzdGluZ3Vpc2ggbHRzc20gc3RhdHVzIGFtb25nIEwxLjAsIEwxLjEgYW5k
IEwxLjIuCj4gQnV0IHRoZSB2YXJpYW50IGRyaXZlciBtYXkgaW1wbGVtZW50IGFkZGl0aW9uYWwg
cmVnaXN0ZXIgdG8gdGVsbCB0aGVtCj4gYXBhcnQuIFNvIHRoaXMgcGF0Y2ggYWRkcyB0d28gcHNl
dWRvIGRlZmluaXRpb25zIGZvciB2YXJpYW50IGRyaXZlcnMgdG8KPiB0cmFuc2x0YWUgdGhlaXIg
aW50ZXJuYWwgTDEgc3Vic3RhdGVzIGZvciBkZWJ1Z2ZzIHRvIHNob3cuCj4gCgpHZW50bGUgcGlu
Zy4uLiA6KQoKPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBz
LmNvbT4KPiAtLS0KPiBUaGlzIHBhdGNoIGlzIGJhc2VkIG9uIGxhdGVzdCBwY2kgY29udHJvbGxl
ci9kd2MgYnJhbmNoIGdpdmVuIHRoYXQgTDFzcyBzdXBwb3J0Cj4gZm9yIFJvY2tjaGlwIGhhcyBi
ZWVuIGFwcGxpZWQuCj4gCj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2ln
bndhcmUtZGVidWdmcy5jIHwgMiArKwo+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kZXNpZ253YXJlLmggICAgICAgICB8IDQgKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kZXNpZ253YXJlLWRlYnVnZnMuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZGVzaWdud2FyZS1kZWJ1Z2ZzLmMKPiBpbmRleCAwZmJmODZjMGI5N2UuLmRmOThmZWU2OTg5
MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndh
cmUtZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNp
Z253YXJlLWRlYnVnZnMuYwo+IEBAIC00ODUsNiArNDg1LDggQEAgc3RhdGljIGNvbnN0IGNoYXIg
Kmx0c3NtX3N0YXR1c19zdHJpbmcoZW51bSBkd19wY2llX2x0c3NtIGx0c3NtKQo+ICAgCURXX1BD
SUVfTFRTU01fTkFNRShEV19QQ0lFX0xUU1NNX1JDVlJZX0VRMSk7Cj4gICAJRFdfUENJRV9MVFNT
TV9OQU1FKERXX1BDSUVfTFRTU01fUkNWUllfRVEyKTsKPiAgIAlEV19QQ0lFX0xUU1NNX05BTUUo
RFdfUENJRV9MVFNTTV9SQ1ZSWV9FUTMpOwo+ICsJRFdfUENJRV9MVFNTTV9OQU1FKERXX1BDSUVf
TFRTU01fTDFfMSk7Cj4gKwlEV19QQ0lFX0xUU1NNX05BTUUoRFdfUENJRV9MVFNTTV9MMV8yKTsK
PiAgIAlkZWZhdWx0Ogo+ICAgCQlzdHIgPSAiRFdfUENJRV9MVFNTTV9VTktOT1dOIjsKPiAgIAkJ
YnJlYWs7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVz
aWdud2FyZS5oIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmgK
PiBpbmRleCBkM2RjMGNkOGU3YjUuLjNmNDYxMTg4MmUyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+ICsrKyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oCj4gQEAgLTM4MCw2ICszODAsMTAgQEAg
ZW51bSBkd19wY2llX2x0c3NtIHsKPiAgIAlEV19QQ0lFX0xUU1NNX1JDVlJZX0VRMiA9IDB4MjIs
Cj4gICAJRFdfUENJRV9MVFNTTV9SQ1ZSWV9FUTMgPSAweDIzLAo+ICAgCj4gKwkvKiBWYXJpYW50
IGRyaXZlcnMgcHJvdmlkZSBwc2V1ZG8gTDEgc3Vic3RhdGVzIGZyb20gZ2V0X2x0c3NtKCkqLwo+
ICsJRFdfUENJRV9MVFNTTV9MMV8xID0gMHgxNDEsCj4gKwlEV19QQ0lFX0xUU1NNX0wxXzIgPSAw
eDE0MiwKPiArCj4gICAJRFdfUENJRV9MVFNTTV9VTktOT1dOID0gMHhGRkZGRkZGRiwKPiAgIH07
Cj4gICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
