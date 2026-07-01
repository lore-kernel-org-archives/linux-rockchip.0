Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 841B0C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 16:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CaeuU42PllBuoNqwD2EefZ3UoNNpUY6HsGj+YVwv0k8=; b=ErYOGCKAj+gCkD
	GQ8VRateSMKnomXlShI+4CDV5eENK6In0vJzt7mQySN5qJkhrUYp9G/alVsI/8jTKG8kWgqlDU+zm
	vbpVQSsdzdSMQCXwJ3/yYAK9YiXAudEpUJHJzQfe+Iu6HEpJpqU/TYdVMxetEf+6c8+pviOTkT7gf
	NgvnAySDPSmZkC1Bqi8+px9yWvCp2f5xSqe2nciZGn/l6+P8QQvY1sBfBjprSNMKYby6wFJMjFEvd
	Y2icJLHB4DDJ0MAObF/10e8SB5pc9aS2nmpJnRuCWtpkoRJgj4qrzmUraDNllsIbmZbxyHk9IDi2e
	JWY23vpqzmRyPqnG14Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wexOM-00000002Tkt-2Yp8;
	Wed, 01 Jul 2026 16:02:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wexOG-00000002TjT-0Ipf;
	Wed, 01 Jul 2026 16:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Oi59Gfv03QRh4wuEQ3UJG1fGRKD0h5n2wK8ssSfHsFY=; b=MaTGrKK+eqnG+SYj6BecTVg4tW
	7qdxK+Va41Q2jRAT+9P3v8pxHfhrcHqMtM0ibxcke4vKH8rCytyJ5qNXhNiPiPlw7DlvHvWuAPj/b
	vEzF/SktlyChlwRuHUHMup59gXxjv9f5OA8ur9ozlYgSkytj0D7Y3tS6nkskdPA6syEzkUyFnz8DT
	9XXxi41yPrqj3MDFzGyFtq/Up91i4+qDj2lA4ZUy+FDVdkSVkCRzYSycpnyM+fOwlV4iQCmEkssL4
	urBkcySQ3HphZQ2h7vbr4Qm7iVrhM4RZntqzA3KBN8ad0mcymjnmgG1b5p6DbRWg+MwZufHFsSLAF
	+2QOQenw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 =?UTF-8?B?8J+Sqy4yMjA=?= <1579567540@qq.com>
Cc: linux-can <linux-can@vger.kernel.org>, mailhol <mailhol@kernel.org>,
 kernel <kernel@pengutronix.de>, robh <robh@kernel.org>,
 krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] can: rockchip: add RK3588 CAN-FD support
Date: Wed, 01 Jul 2026 18:02:02 +0200
Message-ID: <3077724.o0KrE1Onz3@diego>
In-Reply-To: <tencent_AF88C27E354DFF34B132BC0906236A01A408@qq.com>
References: <20260701070128.2096267-1-1579567540@qq.com>
 <20260701-flashy-crocodile-of-flowers-a6a23e-mkl@pengutronix.de>
 <tencent_AF88C27E354DFF34B132BC0906236A01A408@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_090220_141733_011E615B 
X-CRM114-Status: GOOD (  28.25  )
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

QW0gTWl0dHdvY2gsIDEuIEp1bGkgMjAyNiwgMTQ6Mjk6MjIgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiDwn5KrLjIyMDoKPiBIaSBIZWlrbywgTWFyYywKPiAKPiB0aGFua3Mg
Zm9yIHRoZSByZXZpZXcuCj4gCj4gPiBwbGVhc2UgdXNlIGEgcmVhbCBuYW1lLCBub3QgYW4gYWxp
YXMuCj4gCj4gSSB3aWxsIHVzZSBteSByZWFsIG5hbWUgaW4gZnV0dXJlIHJldmlzaW9ucy4KPiAK
PiA+IEZ1bm5pbHkgZW5vdWdoLCB3ZSBzZWVtIHRvIGhhdmUgd29ya2VkIG9uIHRoZSBzYW1lIHRv
cGljCj4gPiBhdCB0aGUgc2FtZSB0aW1lIDotKQo+ID4KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xrbWwvMjAyNjA2MzAxNjQzMzYuMzQ0NDU1MC0xLWhlaWtvQHNudGVjaC5kZS8KPiAKPiBJ
IG1pc3NlZCBIZWlrbydzIHNlcmllcyBiZWZvcmUgc2VuZGluZyBtaW5lLCBzb3JyeSBmb3IgdGhl
IG5vaXNlLgo+IChCdXQgaXQgcmVhbGx5IGlzIGEgdmVyeSBpbnRlcmVzdGluZyBjb2luY2lkZW5j
ZS4pCj4gU2luY2UgdGhlIHNlcmllcyBvdmVybGFwLCBJIGFtIGhhcHB5IHRvIGJhc2UgZnVydGhl
ciB3b3JrIG9uIEhlaWtvJ3MKPiBzZXJpZXMsIG9yIHRvIGxldCBIZWlrbyBmb2xkIHRoZSBSSzM1
ODggUlhfRklGT19DTlQgYml0ZmllbGQgY2hhbmdlIGludG8KPiBoaXMgdjIgaWYgdGhhdCBpcyBw
cmVmZXJyZWQuCgpJIGRvbid0IHRoaW5rIHdlIG5lZWQgdHdvIHBlb3BsZSB3b3JraW5nIG9uIHRo
aXMgYW5kIHlvdSBkaWQgdGhlIGJldHRlcgppbnZlc3RpZ2F0aW9uIGludG8gdGhlIGRpZmZlcmVu
Y2VzLCBzbyB5b3Ugc2hvdWxkIGdldCB0aGUgY3JlZGl0IDotKQoKU28gSSBndWVzcyBteSBwcmVm
ZXJlbmNlIHdvdWxkIGJlIHRvOgotIHBpY2sgdXAgdGhlIGVycmF0dW0gNiBpbnRvIHlvdXIgcGF0
Y2gKLSBhZGQgbXkgaGFpa291IHBhdGNoIHRvIHRoZSBzZXJpZXMgLSB0aGF0IHdheSB3ZSBhbHNv
IGdldCBhIHVzZXIKLSBoYW5kbGUgS3J6eXN6dG9mJ3MgY29tbWVudCBmcm9tCiAgaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNjA3MDEtc2Vuc2libGUtY3J5cHRpYy1v
Y2Vsb3QtNTgwMzViQHF1b2xsLwoKICBhcyBib3RoIG91ciBiaW5kaW5ncyBoYXZlIHRoZSBzYW1l
IHN0cnVjdHVyZSwgc28gSSBndWVzcyBpdCBzaG91bGQgYmUKCiAgICBvbmVPZjoKICAgICAgIC0g
ZW51bToKICAgICAgICAgICAgIHJvY2tjaGlwLHJrMzU2OHYyLWNhbmZkCiAgICAgICAgICAgICBy
b2NrY2hpcCxyazM1ODh2Mi1jYW5mZAogICAgICAgLSBpdGVtczoKICAgICAgICAgICAtIGNvbnN0
OiByb2NrY2hpcCxyazM1Njh2My1jYW5mZAogICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJr
MzU2OHYyLWNhbmZkCgpBbmQgc3VibWl0IHRoYXQgYXMgdjIuCgoKPiBGb3IgUlhfRklGT19DTlQs
IEkgZm91bmQgdGhlIGJpdGZpZWxkIGRpZmZlcmVuY2UgYnkgcmVhZGluZyBSb2NrY2hpcCdzCj4g
dmVuZG9yIGtlcm5lbCA2LjEgZHJpdmVyIGFuZCBjb21wYXJpbmcgdGhlIENBTiBzdXBwb3J0IGZv
ciBSSzM1NjggYW5kCj4gUkszNTg4LiBUaGUgdmVuZG9yIGRyaXZlciB1c2VzIGRpZmZlcmVudCBS
WCBGSUZPIGNvdW50IGJpdGZpZWxkcyBmb3IgdGhlCj4gdHdvIFNvQ3MsIGFuZCBteSB0ZXN0aW5n
IG9uIFJLMzU4OHYyIGFsc28gaW5kaWNhdGVzIHRoYXQgYml0cyA3OjUgYXJlCj4gbmVlZGVkLiBJ
IGNhbiBhZGQgYSBzaG9ydCBub3RlIGFib3V0IHRoaXMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIG9y
Cj4gY29kZSBjb21tZW50LgoKSXQncyBhbHJlYWR5IGluIHRoZSBjb21taXQgbWVzc2FnZSwgc28g
dGhhdCBzaG91bGQgYmUgZmluZQoKCj4gT25lIG1vcmUgcXVlc3Rpb24gYWJvdXQgUktDQU5GRF9R
VUlSS19DQU5GRF9CUk9LRU46IGluIG15IFJLMzU4OHYyIHRlc3QKPiBzZXR1cCB0aGUgdHdvIGtu
b3duIENBTi1GRCB0cmlnZ2VyIGZyYW1lcyBkaWQgbm90IGNhdXNlIGFuIEVycm9yCj4gSW50ZXJy
dXB0IG9yIEVycm9yLVdhcm5pbmcuIEkgYWxzbyByYW4gYSAxMiBob3VyIENBTi1GRCBzdHJlc3Mg
dGVzdCB3aXRoCj4gY2FuMC9jYW4xIGRpcmVjdGx5IGNvbm5lY3RlZCwgMjAwIE1IeiBDQU4gY2xv
Y2ssIDUwMCBrYml0L3Mgbm9taW5hbAo+IGJpdHJhdGUgYW5kIDEgTWJpdC9zIGRhdGEgYml0cmF0
ZS4gVGhhdCB0ZXN0IGluY2x1ZGVkIHBlcmlvZGljCj4gdHJhbnNtaXNzaW9uIG9mIHRoZSB0d28g
Q0FORkRfQlJPS0VOIGZyYW1lcywgdmFyaWFibGUgRExDIENBTi1GRCBmcmFtZXMsCj4gQ0FOLUZE
K0JSUytFRkYgbG9hZCwgYW5kIGEgY2FuZmR0ZXN0IHJ1biB3aXRoIDE5LDQxNywxMjkgZnJhbWVz
IHdpdGhvdXQKPiBkYXRhIG1pc21hdGNoLgo+IAo+IFdvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8gbGVh
dmUgUktDQU5GRF9RVUlSS19DQU5GRF9CUk9LRU4gZGlzYWJsZWQgZm9yCj4gUkszNTg4djIsIG9y
IGhhdmUgeW91IHNlZW4gdGhpcyBpc3N1ZSBvbiBSSzM1ODggYXMgd2VsbD8KCkkgd2FzIG1vcmUg
Z29pbmcgYnkgdGhlIGZhY3QgdGhhdCBldmVuIFJvY2tjaGlwIHJlbW92ZWQgZXZlcnkgbWVudGlv
biBvZgp0aGUgLUZEIGZyb20gYWxsIGRvY3VtZW50YXRpb24sIHNvIHdhcyBhc3N1bWluZyBpdCBz
dGlsbCBiZWluZyBicm9rZW4gYXMKYmVmb3JlLiBCdXQgaWYgaXQgYWN0dWFsbHkgd29ya3MsIHRo
ZW4gcGVyc29uYWxseSBJJ20gbW9yZSB0aGFuIGZpbmUgd2l0aAplbmFibGluZyBDQU4tRkQgOi1E
IC4KCkkgZ3Vlc3MgTWFyYyBtaWdodCBoYXZlIG1vcmUgaW5zaWdodCB3aGVyZSB0aGUgRkQgaXNz
dWUgdHJpZ2dlcmVkIG9uCnRoZSBSSzM1NjguCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
