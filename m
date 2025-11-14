Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BC04CE7AF9
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 12:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qus5xtUcCu8QkyTAacVs57FJxQapQ4Wsyyuyfc0B3tk=; b=HsUsH5S6ebG+V2
	1KzGIKFoOyYORfqmHbW/z7jVq3TQbkB225bTv5WqG/p87NSkc4nLBhKTr7HwLP4ggLUrKA1xrth8n
	Em5vYm2/kdI56F9pMzu/4lNprZEpbRCGvM1C2Ul8nLnVucW/Re9dAi/XyxakdwucCMjRYS9Jcp1Jn
	YR4KA17P9K77AhaB9X6IdaUTwJEe9BMBkkaK1yRNXPgxnGDVnXv7jS5iFhF1BAI1sFXZCu5yGi1ap
	VM0xt7C9b2UuT043yjz/kPXi4mKBA+TNpTYbqU83/mky/tNt8kIqsmhxnW2aT0L/IlAETmPTMjQ/l
	F6Oo797TI2S78F0LXdSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJsh6-0000000CBDh-2fBO;
	Fri, 14 Nov 2025 12:14:24 +0000
Received: from mail-m19731100.qiye.163.com ([220.197.31.100])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJsh3-0000000CBDJ-1PG7;
	Fri, 14 Nov 2025 12:14:22 +0000
Received: from [172.16.12.211] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 299e2ff87;
	Fri, 14 Nov 2025 20:14:14 +0800 (GMT+08:00)
Message-ID: <3233894e-9409-4b74-a954-0b30064c3c8c@rock-chips.com>
Date: Fri, 14 Nov 2025 20:14:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/3] net: can: rockchip: add can for RK3576 Soc
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, robh@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-can@vger.kernel.org,
 linux-rockchip@lists.infradead.org, cl@rock-chips.com,
 kernel@pengutronix.de, krzk+dt@kernel.org, mailhol.vincent@wanadoo.fr
References: <20251113075419.482940-1-zhangqing@rock-chips.com>
 <20251113075419.482940-4-zhangqing@rock-chips.com>
 <20251113-slim-foamy-gecko-2dc389-mkl@pengutronix.de>
 <176d96b4-397c-49d4-8e8e-2f77a5d59c12@rock-chips.com>
 <20251114-utopian-cheerful-otter-33c1d5-mkl@pengutronix.de>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <20251114-utopian-cheerful-otter-33c1d5-mkl@pengutronix.de>
X-HM-Tid: 0a9a8249a13403a3kunmc0d95d2fbc54e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk1KGVZCSEJKTkpOTh4fGEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=WxS7EliwFNkkh/33Nso4byD6TZWgb1CUuJsWPOaGt2An9EnsKLuKeJesM+qdTGK3hXG3fuS3alEjq9Lpve+Xpd8wQDadX8jGOI1mq31E6Krw1bwnjhvML7vSjUFsvSFswwKUFouA07AMRUS2L3ei9BoaJF7Intm5rZq9qOheG5I=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vELGL+YLg67WURvnTEyN9CZyoywwF35KjCPfH+omGCM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_041421_552856_3B3F7948 
X-CRM114-Status: UNSURE (   9.01  )
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

CuWcqCAyMDI1LzExLzE0IDE5OjAxLCBNYXJjIEtsZWluZS1CdWRkZSDlhpnpgZM6Cj4gT24gMTQu
MTEuMjAyNSAxNzo1NTo1MywgemhhbmdxaW5nIHdyb3RlOgo+Pj4+ICsvKiBUaGUgcmszNTc2IENB
Ti1GRCAqLwo+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJrY2FuZmRfZGV2dHlwZV9kYXRhIHJr
Y2FuX2RldnR5cGVfZGF0YV9yazM1NzYgPSB7Cj4+Pj4gKwkubW9kZWwgPSBSS0NBTl9NT0RFTF9S
SzM1NzYsCj4+Pj4gKwkucXVpcmtzID0gUktDQU5GRF9RVUlSS19DQU5GRF9CUk9LRU4sCj4+PiBJ
cyBDQU4tRkQgbW9kZSBicm9rZW4gb24gdGhlIHJrMzU3Nj8KPj4+Cj4+PiBQbGVhc2UgdGVzdCBD
QU4tRkQgYW5kIHBsZWFzZSBkbyB0aGUgdGVzdHMgZG9jdW1lbnRlZCBuZWFyIHRoZQo+Pj4gZGVm
aW5pdGlvbiBvZiBSS0NBTkZEX1FVSVJLX0NBTkZEX0JST0tFTjoKPj4+Cj4+PiB8IFRlc3RzIG9u
IHRoZSByazM1Njh2MiBhbmQgcmszNTY4djMgc2hvdyB0aGF0IHJlY2VpdmluZyBjZXJ0YWluCj4+
PiB8IENBTi1GRCBmcmFtZXMgdHJpZ2dlciBhbiBFcnJvciBJbnRlcnJ1cHQuCj4+PiB8Cj4+PiB8
IC0gRm9ybSBFcnJvciBpbiBSWCBBcmJpdHJhdGlvbiBQaGFzZTogVFhfSURMRSBSWF9TVFVGRl9D
T1VOVCAoMHgwYTAxMDEwMCkgQ01EPTAgUlg9MCBUWD0wCj4+PiB8ICAgRXJyb3ItV2FybmluZz0x
IEJ1cy1PZmY9MAo+Pj4gfCAgIFRvIHJlcHJvZHVjZToKPj4+IHwgICBob3N0Ogo+Pj4gfCAgICAg
Y2Fuc2VuZCBjYW4wIDAwMiMjMDFmCj4+PiB8ICAgRFVUOgo+Pj4gfCAgICAgY2FuZHVtcCBhbnks
MDowLCNGRkZGRkZGRiAtY2V4ZEh0QQo+Pj4gfAo+Pj4gfCAtIEZvcm0gRXJyb3IgaW4gUlggQXJi
aXRyYXRpb24gUGhhc2U6IFRYX0lETEUgUlhfQ1JDICgweDBhMDEwMjAwKSBDTUQ9MCBSWD0wIFRY
PTAKPj4+IHwgICBFcnJvci1XYXJuaW5nPTEgQnVzLU9mZj0wCj4+PiB8ICAgVG8gcmVwcm9kdWNl
Ogo+Pj4gfCAgIGhvc3Q6Cj4+PiB8ICAgICBjYW5zZW5kIGNhbjAgMDAyIyMwNzIxNzAxMDAwMDAw
MDAwMAo+Pj4gfCAgIERVVDoKPj4+IHwgICAgIGNhbmR1bXAgYW55LDA6MCwjRkZGRkZGRkYgLWNl
eGRIdEEKPj4gVGhlcmUgaXMgbm8gZG91YnQgYWJvdXQgdGhlIG90aGVyIG1vZGlmaWNhdGlvbnMg
YWJvdmUuIFRoZXkgd2lsbCBiZQo+PiBjb3JyZWN0ZWQgaW4gdmVyc2lvbiBWMTAuCj4+Cj4+IENB
TkZEIHJlcXVpcmVzIGF1dGhvcml6YXRpb24gYW5kIGlzIG5vdCBzdXBwb3J0ZWQgYnkgZGVmYXVs
dC4KPiBDYW4geW91IGV4cGxhaW4gd2hhdCB5b3UgbWVhbiBieSBhdXRob3JpemF0aW9uPyBXaGF0
IGRvIHlvdSBtZWFuIGJ5ICJub3QKPiBzdXBwb3J0ZWQiPwpGb3IgUkszNTc2IFNvQywgdGhlIElD
IGhhcmR3YXJlIGRlc2lnbiBzdXBwb3J0cyBDQU5GRC4KSG93ZXZlciwgYSBsaWNlbnNlIGFwcGxp
Y2F0aW9uIGlzIHJlcXVpcmVkIGJlZm9yZSBpdCBjYW4gYmUgdXNlZDsgCm90aGVyd2lzZSwgdGhl
cmUgd2lsbCBiZSBsZWdhbCByaXNrcy4KPgo+PiBBZnRlciBvYnRhaW5pbmcgYXV0aG9yaXphdGlv
biwgaXQgY2FuIGJlIHVzZWQsIHNvIHRoaXMgcGxhY2UgaXMgbm90Cj4+IGNvbnNpZGVyZWQgYnJv
a2VuLgo+PiBXaGF0J3MgdGhlIGJlc3Qgd2F5IHRvIGhhbmRsZSB0aGlzIHNpdHVhdGlvbj8KPiBy
ZWdhcmRzLAo+IE1hcmMKPgotLSAK5byg5pm0CueRnuiKr+W+rueUteWtkOiCoeS7veaciemZkOWF
rOWPuApSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sTHRkCuWcsOWdgO+8muemj+W7uuecgeemj+W3
nuW4gumTnOebmOi3r+i9r+S7tuWkp+mBkzg55Y+36L2v5Lu25ZutQeWMujIx5Y+35qW8CkFkZDpO
by4yMSBCdWlsZGluZywgQSBEaXN0cmljdCwgTm8uODkgU29mdHdhcmUgQm91bGV2YXJkIEZ1emhv
dSwgRnVqaWFuIDM1MDAwMywgUC5SLkNoaW5hClRlbDorODYtMDU5MS04Mzk5MTkwNi04NjAxCumC
rue8lu+8mjM1MDAwMwpFLW1haWw6ZWxhaW5lLnpoYW5nQHJvY2stY2hpcHMuY29tCioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioK5L+d5a+G5o+Q56S677ya5pys6YKu5Lu25Y+K5YW26ZmE5Lu25ZCr5pyJ5py6
5a+G5L+h5oGv77yM5LuF5Y+R6YCB57uZ5pys6YKu5Lu25omA5oyH54m55a6a5pS25Lu25Lq644CC
6Iul6Z2e6K+l54m55a6a5pS25Lu25Lq677yM6K+35Yu/5aSN5Yi244CB5L2/55So5oiW5oqr6Zyy
5pys6YKu5Lu255qE5Lu75L2V5YaF5a6544CC6Iul6K+v5pS25pys6YKu5Lu277yM6K+35LuO57O7
57uf5Lit5rC45LmF5oCn5Yig6Zmk5pys6YKu5Lu25Y+K5omA5pyJ6ZmE5Lu277yM5bm25Lul5Zue
5aSN6YKu5Lu25oiW5YW25LuW5pa55byP5Y2z5Yi75ZGK55+l5Y+R5Lu25Lq644CC56aP5bee55Ge
6Iqv5b6u55S15a2Q5pyJ6ZmQ5YWs5Y+45oul5pyJ5pys6YKu5Lu25L+h5oGv55qE6JGX5L2c5p2D
5Y+K6Kej6YeK5p2D77yM56aB5q2i5Lu75L2V5pyq57uP5o6I5p2D6K645Y+v55qE5L615p2D6KGM
5Li644CCCgpJTVBPUlRBTlQgTk9USUNFOiBUaGlzIGVtYWlsIGlzIGZyb20gRnV6aG91IFJvY2tj
aGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkIC5UaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQg
YW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGluZm9ybWF0aW9uIHRoYXQgaXMgcHJpdmlsZWdl
ZCwgY29uZmlkZW50aWFsIGFuZC9vciBleGVtcHQgZnJvbSBkaXNjbG9zdXJlIHVuZGVyIGFwcGxp
Y2FibGUgbGF3IGFuZCByZWxldmFudCBOREEuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCBy
ZWNpcGllbnQsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IGRpc2Nsb3N1cmUsIGNv
cHlpbmcsIGRpc3RyaWJ1dGlvbiwgb3IgdXNlIG9mIHRoZSBpbmZvcm1hdGlvbiBpcyBTVFJJQ1RM
WSBQUk9ISUJJVEVELiBQbGVhc2UgaW1tZWRpYXRlbHkgY29udGFjdCB0aGUgc2VuZGVyIGFzIHNv
b24gYXMgcG9zc2libGUgYW5kIGRlc3Ryb3kgdGhlIG1hdGVyaWFsIGluIGl0cyBlbnRpcmV0eSBp
biBhbnkgZm9ybWF0LiBUaGFuayB5b3UuCgoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
