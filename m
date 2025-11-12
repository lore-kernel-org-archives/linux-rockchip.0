Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB00FCCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 10:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D95KjfFlxV4nBtQdjGL6rHekLj9kyVusPFMjsOjUPqE=; b=zz+h1tswva/TFq
	Lz1YBZmiEvKIGXn/80Tec4Q04pW+ucHpat9GgPxtvFFpngO0LHCZ8XEKya/9796z5H7I/7bJF9bTv
	Kl1YiGHU12j2+Ioy6RfRIQsJ6EKqNR/6jWcAnSCOA2f/FxQu6+CxmRaLY9AcvKQohkoPU0bLyB5+T
	CSZE4iWRey89X/jx3+zgSQJT/i1SsIgtF/gw5e6HXsyKtS7JxvFCYfyimlnYwZ26sNX4c4dyEt42F
	CmqN1Ln8m+rIAvp2EHDCDvoQpTwDNTRgnQYq6OfsgtvjYiLw2jrbdFwDOgLUPp3UslaSJYzY8bc4H
	q9VrX4pgzuw+IOvf9R4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ7kJ-00000008Wfe-2XEZ;
	Wed, 12 Nov 2025 10:06:35 +0000
Received: from mail-m49200.qiye.163.com ([45.254.49.200])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ7kG-00000008WfH-470q;
	Wed, 12 Nov 2025 10:06:34 +0000
Received: from [172.16.12.30] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 295429862;
	Wed, 12 Nov 2025 18:06:27 +0800 (GMT+08:00)
Message-ID: <65ff0185-e471-40ba-8991-43b1a42b1d30@rock-chips.com>
Date: Wed, 12 Nov 2025 18:06:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v8 1/4] dt-bindings: can: rockchip_canfd: add
 rk3576 CAN controller
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com,
 linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251112015940.3695638-1-zhangqing@rock-chips.com>
 <20251112015940.3695638-2-zhangqing@rock-chips.com>
 <20251112-faithful-olive-orangutan-0dd207-mkl@pengutronix.de>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <20251112-faithful-olive-orangutan-0dd207-mkl@pengutronix.de>
X-HM-Tid: 0a9a7787ea7c03a3kunmc052c1ea2aa6e8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkMYTVZPSRhDT0IeSU0eQktWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=CUikGddO+ZN7whhA7uNkqz4Av3a3h3ecRTM839aDoNwjuOT1rwIvlBvuulvGqith6x6wghvs//J4PEegTy0+yeZjxi8SwbDF5kIi21lFqzQibcnJjjIhx3cu0PbBFOG9OjhGdhUCKwYl/KKZQSOJBth+Om6cVQWjzRsmv01d2KI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=9n0Y+NoH+kvwHdRXyYxizd4Ni80WNG4fVyyRdV90H6M=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_020633_539513_8DC8B9FC 
X-CRM114-Status: UNSURE (   9.31  )
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

CuWcqCAyMDI1LzExLzEyIDE2OjUzLCBNYXJjIEtsZWluZS1CdWRkZSDlhpnpgZM6Cj4gT24gMTIu
MTEuMjAyNSAwOTo1OTozNywgRWxhaW5lIFpoYW5nIHdyb3RlOgo+PiBBZGQgZG9jdW1lbnRhdGlv
biBmb3IgdGhlIHJvY2tjaGlwIHJrMzU3NiBDQU4gY29udHJvbGxlci4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiAg
IC4uLi9iaW5kaW5ncy9uZXQvY2FuL3JvY2tjaGlwLHJrMzU2OHYyLWNhbmZkLnlhbWwgIHwgMTQg
KysrKysrKysrKy0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvY2FuL3JvY2tjaGlwLHJrMzU2OHYyLWNhbmZkLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nhbi9yb2NrY2hpcCxyazM1Njh2Mi1jYW5mZC55
YW1sCj4+IGluZGV4IGEwNzdjMDMzMDAxMy4uMjJlMTA0OTRlN2QxIDEwMDY0NAo+PiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nhbi9yb2NrY2hpcCxyazM1Njh2
Mi1jYW5mZC55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9u
ZXQvY2FuL3JvY2tjaGlwLHJrMzU2OHYyLWNhbmZkLnlhbWwKPj4gQEAgLTEwLDEzICsxMCwxMiBA
QCB0aXRsZToKPj4gICBtYWludGFpbmVyczoKPj4gICAgIC0gTWFyYyBLbGVpbmUtQnVkZGUgPG1r
bEBwZW5ndXRyb25peC5kZT4KPj4KPj4gLWFsbE9mOgo+PiAtICAtICRyZWY6IGNhbi1jb250cm9s
bGVyLnlhbWwjCj4+IC0KPiBXaGF0IGhhcHBlbmVkIHRvIHRoZSBhbGxPZj8KVGhpcyBpcyBhIG1p
c29wZXJhdGlvbiBhbmQgd2lsbCBiZSBjb3JyZWN0ZWQgaW4gdmVyc2lvbiBWOS4KVG8gc3BlZWQg
dXAgdGhlIHJldmlldyBvZiB0aGUgY3VycmVudCB2ZXJzaW9uLCBWOSB3aWxsIGFsc28gcmVtb3Zl
IGRtYS4KPgo+PiAgIHByb3BlcnRpZXM6Cj4+ICAgICBjb21wYXRpYmxlOgo+PiAgICAgICBvbmVP
ZjoKPj4gLSAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU2OHYyLWNhbmZkCj4+ICsgICAgICAt
IGVudW06Cj4+ICsgICAgICAgICAgLSByb2NrY2hpcCxyazM1Njh2Mi1jYW5mZAo+PiArICAgICAg
ICAgIC0gcm9ja2NoaXAscmszNTc2LWNhbgo+PiAgICAgICAgIC0gaXRlbXM6Cj4+ICAgICAgICAg
ICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU2OHYzLWNhbmZkCj4+ICAgICAgICAgICAgIC0gY29u
c3Q6IHJvY2tjaGlwLHJrMzU2OHYyLWNhbmZkCj4+IEBAIC00Myw2ICs0MiwxMyBAQCBwcm9wZXJ0
aWVzOgo+PiAgICAgICAgIC0gY29uc3Q6IGNvcmUKPj4gICAgICAgICAtIGNvbnN0OiBhcGIKPj4K
Pj4gKyAgZG1hczoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgIGRtYS1uYW1lczoKPj4g
KyAgICBpdGVtczoKPj4gKyAgICAgIC0gY29uc3Q6IHJ4Cj4+ICsKPj4gICByZXF1aXJlZDoKPj4g
ICAgIC0gY29tcGF0aWJsZQo+PiAgICAgLSByZWcKPiByZWdhcmRzLAo+IE1hcmMKPgotLSAK5byg
5pm0CueRnuiKr+W+rueUteWtkOiCoeS7veaciemZkOWFrOWPuApSb2NrY2hpcCBFbGVjdHJvbmlj
cyBDby4sTHRkCuWcsOWdgO+8muemj+W7uuecgeemj+W3nuW4gumTnOebmOi3r+i9r+S7tuWkp+mB
kzg55Y+36L2v5Lu25ZutQeWMujIx5Y+35qW8CkFkZDpOby4yMSBCdWlsZGluZywgQSBEaXN0cmlj
dCwgTm8uODkgU29mdHdhcmUgQm91bGV2YXJkIEZ1emhvdSwgRnVqaWFuIDM1MDAwMywgUC5SLkNo
aW5hClRlbDorODYtMDU5MS04Mzk5MTkwNi04NjAxCumCrue8lu+8mjM1MDAwMwpFLW1haWw6ZWxh
aW5lLnpoYW5nQHJvY2stY2hpcHMuY29tCioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioK5L+d5a+G5o+Q56S6
77ya5pys6YKu5Lu25Y+K5YW26ZmE5Lu25ZCr5pyJ5py65a+G5L+h5oGv77yM5LuF5Y+R6YCB57uZ
5pys6YKu5Lu25omA5oyH54m55a6a5pS25Lu25Lq644CC6Iul6Z2e6K+l54m55a6a5pS25Lu25Lq6
77yM6K+35Yu/5aSN5Yi244CB5L2/55So5oiW5oqr6Zyy5pys6YKu5Lu255qE5Lu75L2V5YaF5a65
44CC6Iul6K+v5pS25pys6YKu5Lu277yM6K+35LuO57O757uf5Lit5rC45LmF5oCn5Yig6Zmk5pys
6YKu5Lu25Y+K5omA5pyJ6ZmE5Lu277yM5bm25Lul5Zue5aSN6YKu5Lu25oiW5YW25LuW5pa55byP
5Y2z5Yi75ZGK55+l5Y+R5Lu25Lq644CC56aP5bee55Ge6Iqv5b6u55S15a2Q5pyJ6ZmQ5YWs5Y+4
5oul5pyJ5pys6YKu5Lu25L+h5oGv55qE6JGX5L2c5p2D5Y+K6Kej6YeK5p2D77yM56aB5q2i5Lu7
5L2V5pyq57uP5o6I5p2D6K645Y+v55qE5L615p2D6KGM5Li644CCCgpJTVBPUlRBTlQgTk9USUNF
OiBUaGlzIGVtYWlsIGlzIGZyb20gRnV6aG91IFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRk
IC5UaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250
YWluIGluZm9ybWF0aW9uIHRoYXQgaXMgcHJpdmlsZWdlZCwgY29uZmlkZW50aWFsIGFuZC9vciBl
eGVtcHQgZnJvbSBkaXNjbG9zdXJlIHVuZGVyIGFwcGxpY2FibGUgbGF3IGFuZCByZWxldmFudCBO
REEuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHlvdSBhcmUgaGVyZWJ5
IG5vdGlmaWVkIHRoYXQgYW55IGRpc2Nsb3N1cmUsIGNvcHlpbmcsIGRpc3RyaWJ1dGlvbiwgb3Ig
dXNlIG9mIHRoZSBpbmZvcm1hdGlvbiBpcyBTVFJJQ1RMWSBQUk9ISUJJVEVELiBQbGVhc2UgaW1t
ZWRpYXRlbHkgY29udGFjdCB0aGUgc2VuZGVyIGFzIHNvb24gYXMgcG9zc2libGUgYW5kIGRlc3Ry
b3kgdGhlIG1hdGVyaWFsIGluIGl0cyBlbnRpcmV0eSBpbiBhbnkgZm9ybWF0LiBUaGFuayB5b3Uu
CgoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
