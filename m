Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECEAEFCC9DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 08:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4X2kZricS2wczcgIg+xrF5wqMunR9kpqY7fLUcI8kg8=; b=x1rSVfYcjIm8aB
	9yVFw0EtGUiCXW7PkGh5eXiOceBwwLD66Opdc4VRsNDdYyOyLJ3jxOCMx3DwUgsxST+UWiXa1CFKl
	nm21mpfXlh2DSmjQa2IZrHEu8hOxf6oTvh+xvVqquqhHwLrCkSpGrFEb3Y8/VCDFAZt6akXaAnK3m
	fniK9X/+VTQAB3w0Fto6YGbRiPXy6Usp2xH9ZE6voSvX9cnHN3DrOv34J0ZfpFtoX8Fg2oT9gMXa3
	yXKZSInCpzQ4V5WkIA7rT4Vb+so2rFH45rPklH2/GiMubAGQvyEs9Zh3+Wa/0yquV+gdl7CnMu/oo
	7d5lFjWzfFJrcIWq2WQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzshY-00000008zYX-3IEs;
	Tue, 10 Mar 2026 08:44:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzshV-00000008zWz-3oHW;
	Tue, 10 Mar 2026 08:44:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=bpD5NoxtizmPqHZoG2v1zD3kMN7TqUhqxGbUTcYDjOA=; b=fT5cMsFZM7UhJIUYmz8AlXMJVJ
	eGThAa2YjlC9LmkfI8+pPI2b9fs3FAN8qJxtsgvju89DlrGI9w2fiLzIFGdAs+Ly2vO0iYPMe8Cdo
	xWtPycH8ncvZBU+qtEpiUYCXeSUnJN/U6aaExRrvy45SP2bCL0pnpIRPINj4/X1oImluK3cCcwdD2
	KWYI9b0ZUgU4W/gbmtAcwP6Q7P0bravi92cQ8k9FAQZ8KdU0rk1fLAndGWlOi+bHFiLNIpuITSIKe
	Zol9mzrw1Dc9XRGuy4KzmgCZsv4dLCL3uOKWYZetoKTwmk2M0v4hG/yS1yzCOP0L6hAc4l+7VCWs/
	eguzc2oQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 linux-media@vger.kernel.org, Conor Dooley <conor@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/4] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576/RK3588
Date: Tue, 10 Mar 2026 09:44:21 +0100
Message-ID: <4358847.1IzOArtZ34@phil>
In-Reply-To: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
References: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_014425_944431_5AE8D37F 
X-CRM114-Status: GOOD (  11.33  )
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

QW0gTWl0dHdvY2gsIDQuIE3DpHJ6IDIwMjYsIDIyOjAwOjM5IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+IFdoZW4gYnVpbGRpbmcgZGV2
aWNlIHRyZWVzIGZvciB0aGUgUkszNTc2IGJhc2VkIGJvYXJkcywgRFRDIHNob3dzIHRoZQo+IGZv
bGxvd2luZyBjb21wbGFpbnQ6Cj4gCj4gICByazM1NzYuZHRzaToxMjgyLjMwLTEzMDQuNTogV2Fy
bmluZyAoc2ltcGxlX2J1c19yZWcpOiAvc29jL3ZpZGVvLWNvZGVjQDI3YjAwMDAwOiBzaW1wbGUt
YnVzIHVuaXQgYWRkcmVzcyBmb3JtYXQgZXJyb3IsIGV4cGVjdGVkICIyN2IwMDEwMCIKClsuLi5d
Cgo+IENyaXN0aWFuIENpb2NhbHRlYSAoNCk6Cj4gICAgICAgbWVkaWE6IGR0LWJpbmRpbmdzOiBy
b2NrY2hpcCx2ZGVjOiBNYXJrIHJlZy1uYW1lcyByZXF1aXJlZCBmb3IgUkszNXs3Niw4OH0KPiAg
ICAgICBtZWRpYTogZHQtYmluZGluZ3M6IHJvY2tjaGlwLHZkZWM6IEFkZCBhbHRlcm5hdGl2ZSBy
ZWctbmFtZXMgb3JkZXIgZm9yIFJLMzV7NzYsODh9CgpkdWUgdG8gbWVkaWEgImFwcGxpZWQiIG1l
c3NhZ2VzIG1vc3Qgb2YgdGhlIHRpbWUgbm90IHJlYWNoaW5nIGFsbCBDYydlZApyZWNpcGllbnRz
LCBwbGVhc2UgdGVsbCBtZSBvbmNlIHRoZSBiaW5kaW5nIHBhdGNoZXMgbGFuZGVkIHNvbWV3aGVy
ZS4KClRoYW5rcyBhIGxvdApIZWlrbwoKPiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogRml4
IHZkZWMgcmVnaXN0ZXIgYmxvY2tzIG9yZGVyIG9uIFJLMzU3Ngo+ICAgICAgIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBVcGRhdGUgdmRlYyByZWdpc3RlciBibG9ja3Mgb3JkZXIgb24gUkszNTg4Cj4g
Cj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHZkZWMueWFtbCAgIHwg
MjIgKysrKysrKysrKysrKystLS0tLS0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU3Ni5kdHNpICAgICAgICAgICB8ICA2ICsrKy0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kgICAgICB8IDEyICsrKysrKy0tLS0tLQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IC0tLQo+IGJh
c2UtY29tbWl0OiA2ZGUyM2Y4MWE1ZTA4YmU4ZmJmNWU4ZDdlOWZlYmM3MmE1YjVmMjdmCj4gY2hh
bmdlLWlkOiAyMDI2MDIyMy12ZGVjLXJlZy1vcmRlci1yazM1NzYtY2MyZWM2ZTA1ZTk4Cj4gCj4g
CgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
