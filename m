Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E8F1C48BC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 23:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3W+THYaOo2SyH66oZtKLk9En7k14Mee20jn3GUzs5E=; b=AtsbkU1dzDNASo
	iT8K0n/s2E8aWNBAjnqN2iLpA/5R9IpSBsRITl4i45PLL+8YfZWfC4Aaw1ffY6uupSWESoVJR9PNv
	BNxT4HQg9m4fnfMgbaAIk2v28S1LLtk23G92agoEs8UwwqPs8vIgUfNMI14RpRI943wMgBJq35bBH
	T+46EAM8y2h76wxkhrDxAGKoz0UTJ+ttjSX/v+p8T6x/bK+p3Q6LWF0vFZz1INAgOsOaFBbFlc71x
	vpydPuYv24M+1amIPeoAqfuyIsBZRjM/FhbuA89/GkmcPB9DkRwrUcEsnFrM7nS8fs6aomgOuPqpO
	rKWdr8pzRInv8I4Qg9Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcZye-0000000GYic-1e9m;
	Tue, 20 Feb 2024 23:56:44 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcZya-0000000GYh8-1FQe;
	Tue, 20 Feb 2024 23:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708473395; bh=6lvUn+C/j0fNP/8+yUQCN4/RJ9aVo+rUL+TbSe1ZyHY=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=sL4ypquHKN/JkzV80/vKNTwPeMicgmxFiuC1sY0sip6Qs4CUb0J2v3ur2tEs2MPRK
	 AgjUlfMS3z48Msi8go3PHSbx5RPCX1GLI5eipvOahjGa6PCYrOkygFiKOSI+Xt/HXo
	 zvfEa7F8C/uux9OZEuOTHQIpQ82iCrYOAX1Z3Jrk=
Date: Wed, 21 Feb 2024 00:56:34 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: Umang Jain <umang.jain@ideasonboard.com>, 
	Adam Ford <aford173@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	linux-kernel@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] media: rkisp1: Allow higher input resolution
Message-ID: <amx55bzbmbuvuroulrsv5dxdlmsm7f32srut2e7ivpybl2lzze@ehonmk7wlowt>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Paul Elder <paul.elder@ideasonboard.com>, Umang Jain <umang.jain@ideasonboard.com>, 
	Adam Ford <aford173@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	linux-kernel@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>, 
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240217185202.1754750-1-megi@xff.cz>
 <20240218205908.GA12766@pendragon.ideasonboard.com>
 <pftafukuzq7qzbhlvwtmeg3mburnttylgy4246timlghtrdgx4@r6munvmj6oqt>
 <CAHCN7x+zi3WxnY-mxZFKePs1cS=-DprEmh_CnypJ4XK7xBzjMQ@mail.gmail.com>
 <b500676e-431f-40fc-868b-9f9bb359a109@ideasonboard.com>
 <ZdMpSLqYVFbU7sF0@pyrite.rasen.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZdMpSLqYVFbU7sF0@pyrite.rasen.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_155640_809775_4799139F 
X-CRM114-Status: GOOD (  41.14  )
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

T24gTW9uLCBGZWIgMTksIDIwMjQgYXQgMDc6MTE6MjBQTSArMDkwMCwgUGF1bCBFbGRlciB3cm90
ZToKPiBPbiBNb24sIEZlYiAxOSwgMjAyNCBhdCAwMjozMzoyMVBNICswNTMwLCBVbWFuZyBKYWlu
IHdyb3RlOgo+ID4gSGkgQWxsLAo+ID4gCj4gPiBPbiAxOS8wMi8yNCA3OjM5IGFtLCBBZGFtIEZv
cmQgd3JvdGU6Cj4gPiA+IE9uIFN1biwgRmViIDE4LCAyMDI0IGF0IDM6MDLigK9QTSBPbmTFmWVq
IEppcm1hbiA8bWVnaUB4ZmYuY3o+IHdyb3RlOgo+ID4gPiA+IE9uIFN1biwgRmViIDE4LCAyMDI0
IGF0IDEwOjU5OjA4UE0gKzAyMDAsIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gPiA+ID4gPiBI
aSBPbmRyZWosCj4gPiA+ID4gPiAKPiA+ID4gPiA+IChDQydpbmcgUGF1bCBhbmQgVW1hbmcpCj4g
PiA+ID4gPiAKPiA+ID4gPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+ID4gPiA+ID4gCj4g
PiA+ID4gPiBPbiBTYXQsIEZlYiAxNywgMjAyNCBhdCAwNzo1MTo1OFBNICswMTAwLCBPbmTFmWVq
IEppcm1hbiB3cm90ZToKPiA+ID4gPiA+ID4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYu
Y3o+Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJbiBCU1AgZHJpdmVyLCBpdCBpcyBhbGxvd2Vk
LCBhbmQgaXQgd29ya3MgaW4gcHJhY3RpY2UuIFRlc3RlZCBvbgo+ID4gPiA+ID4gPiBQaW5lcGhv
bmUgUHJvL1JLMzM5OSB3aXRoIElNWDI1OCBhdCBmdWxsIHJlcy4KPiA+ID4gPiA+IFBhdWwsIFVt
YW5nLCBkbyBJIHJlY2FsbCBjb3JyZWN0bHkgdGhhdCB5b3UgaGF2ZSBhIHNpbWlsYXIgY2hhbmdl
ID8KPiA+ID4gPiA+IENvdWxkIHlvdSByZXZpZXcgYW5kIHRlc3QgdGhpcyAoZXNwZWNpYWxseSBv
biB0aGUgaS5NWDhNUCkgPwo+ID4gPiA+IEl0J3MgYWxzbyBhIGxpbWl0IGZyb20gdGhlIGRhdGFz
aGVldCwgc28gdGhlIGNoYW5nZSBzaG91bGQgbm90IGJlIHRoYXQKPiA+ID4gPiBjb250cm92ZXJz
aWFsOgo+ID4gPiA+IAo+ID4gPiA+ICAgIGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAvZDJiMzMz
MDQzZWNlYmFmMy5wbmcKPiA+ID4gPiAKPiA+ID4gPiAoc28gdGhhdCBpdCBkb2Vzbid0IHNvdW5k
IGxpa2UgSSBqdXN0IGNvcGllZCB0aGUgQlNQIHZhbHVlcykKPiA+ID4gPiAKPiA+ID4gIEZyb20g
d2hhdCBJIHNlZSBpbiB0aGUgaS5NWDhNIFBsdXMgcmVmZXJlbmNlIG1hbnVhbCwgaXQgaGFzIGEg
bWF4Cj4gPiA+IHJlc29sdXRpb24gb2YgNDA5NngzMDcyLCBzbyBpdCBtaWdodCBiZSBuZWNlc3Nh
cnkgdG8gbW92ZSB0aGlzIG9mZgo+ID4gCj4gPiBUaGlzIGlzIHdoYXQgSSAoYW5kIEkgYXNzdW1l
IFBhdWwgdG9vKSBoYXZlIGJlZW4gd29ya2luZyB3aXRoIG9uIGkuTVg4TQo+ID4gUGx1cy4gU28g
aXQncyB0aGUga25vd24gYW5kIHRlc3RlZCB2YWx1ZSBvZiBtYXggSVNQIGlucHV0IGZyb20gb3V0
IHNpZGUuCj4gPiA+IGZyb20gYSAjZGVmaW5lIGludG8gYSBzdHJ1Y3R1cmUgdGhhdCB2YXJpZXMg
YnkgcHJvZHVjdCBmYW1pbHkuCj4gCj4gWWVzLCB0aGlzIGlzIHdoYXQgbmVlZHMgdG8gYmUgZG9u
ZS4gSGVyZSdzIHdoYXQgSSBoYXZlIGluIG15IG5vdGVzOgo+IAo+IC0gVGhlIFJLMzM5OSBUUk0g
c2F5cyA0NDE2eDMzMTIgbWF4IGlucHV0IGFuZCBvdXRwdXQgb24gbWFpbiBwYXRoLCB3aXRoCj4g
ICAxOTIweDEwODAgbWF4IG91dHB1dCBvbiBzZWxmIHBhdGguCj4gLSBUaGUgUFgzMCBkYXRhc2hl
ZXQgWzFdIHNheXMgMzI2NHgyNDQ4IG1heCBpbnB1dCBhbmQgb3V0cHV0IG9uIG1haW4KPiAgIHBh
dGgsIHdpdGggMTkyMHgxMDgwIG1heCBvdXRwdXQgb24gc2VsZiBwYXRoLgo+IC0gVGhlIFJLMzI4
OCBkb2N1bWVudGF0aW9uIFsyXSAodW5kZXIgIkNhbWVyYSBJbnRlcmZhY2UgYW5kIEltYWdlCj4g
ICBQcm9jZXNzb3IiKSBzYXlzIDQ0MTZ4MzMxMiBtYXggaW5wdXQgYW5kIG91dHB1dCBvbiBtYWlu
IHBhdGgsIHdpdGgKPiAgIDE5MjB4MTA4MCBtYXggb3V0cHV0IG9uIHNlbGYgcGF0aC4KPiAtIFRo
ZSBpLk1YOE1QIHJlZmVyZW5jZSBtYW51YWwgKHRoZSBvcGVuIG9uZSkgWzNdIChpbiB0YWJsZSAx
My0xKSBzYXlzCj4gICA0MDk2eDMwNzIgbWF4IHJlc29sdXRpb24gaW4gc2luZ2xlIElTUCBtb2Rl
CgpZZWFoLCBSS0lTUDFfUlNaX1NQX1NSQ19NQVhfSEVJR0hUIGluIHRoZSBkcml2ZXIgYWxzbyBz
ZWVtcyB3ZWlyZCBpbgp0aGlzIHJlc3BlY3Q6CgogICNkZWZpbmUgUktJU1AxX1JTWl9TUF9TUkNf
TUFYX1dJRFRIICAgICAgICAgICAgIDE5MjAKICAjZGVmaW5lIFJLSVNQMV9SU1pfU1BfU1JDX01B
WF9IRUlHSFQgICAgICAgICAgICAxOTIwCgpyZWdhcmRzLAoJby4KCj4gVGhlIGkuTVg4TSBQbHVz
IHNlZW1zIHRvIGluZGVlZCBiZSBsaW1pdGVkIHRvIDQwOTZ4MzA3MiwgYnV0IHRoZSBUUEcgaXMK
PiBjYXBhYmxlIG9mIGdlbmVyYXRpbmcgNDQxNngzMzEyLCBhbmQgdGhlIElTUCB3b3JrcyBmaW5l
IGluIGJ5cGFzcyAoYW5kCj4gdGhlcmVmb3JlIHJhdykgbW9kZSwgc28gdGVjaG5pY2FsbHkgaXQg
aGFzIGRpZmZlcmVudCBtYXhpbXVtIHNpemVzCj4gZGVwZW5kaW5nIG9uIHRoZSBmb3JtYXQgd2hp
Y2ggbWFrZXMgdGhpcyBtb3JlIGV4Y2l0aW5nLgo+IAo+IEluIGFueSBjYXNlLCB0aGUgUFgzMCAo
YXNzdW1pbmcgdGhlIGRhdGFzaGVldCBpcyBjb3JyZWN0KSBvbmx5IHN1cHBvcnRzCj4gdXAgdG8g
MzI2NHgyNDQ4LCBzbyB0aGUgZXhpc3RpbmcgI2RlZmluZSBpcyBpbmNvcnJlY3QgYW55d2F5Lgo+
IAo+IEkgZG9uJ3QgaGF2ZSBhIFBYMzAgbm9yIGFuIFJLMzI4OCBzbyBJIGNhbid0IHRlc3QgdGhv
c2UsIGFuZCBJIGhhdmVuJ3QKPiBzZXQgdXAgbXkgT1Y2NEE0MCB5ZXQgd2hpY2ggKEkndmUgaGVh
cmQpIGNhbiBiZSB1c2VkIHRvIHRlc3QgZXZlbiBiaWdnZXIKPiByZXNvbHV0aW9ucy4KPiAKPiAK
PiBQYXVsCj4gCj4gWzFdIGh0dHBzOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS9pbWFnZXMv
OC84Ny9Sb2NrY2hpcF9QWDMwX0RhdGFzaGVldF9WMS40LTIwMTkxMjI3LnBkZgo+IFsyXSBodHRw
czovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzLzQvNDkvUm9ja2NoaXBfUkszMjg4
X0RhdGFzaGVldF9WMi43LTIwMTkxMjI3LnBkZgo+IFszXSAocmVxdWlyZXMgbG9naW4pIGh0dHBz
Oi8vd3d3Lm54cC5jb20vcHJvZHVjdHMvcHJvY2Vzc29ycy1hbmQtbWljcm9jb250cm9sbGVycy9h
cm0tcHJvY2Vzc29ycy9pLW14LWFwcGxpY2F0aW9ucy1wcm9jZXNzb3JzL2ktbXgtOC1hcHBsaWNh
dGlvbnMtcHJvY2Vzc29ycy9pLW14LThtLXBsdXMtYXJtLWNvcnRleC1hNTMtbWFjaGluZS1sZWFy
bmluZy12aXNpb24tbXVsdGltZWRpYS1hbmQtaW5kdXN0cmlhbC1pb3Q6SU1YOE1QTFVTCj4gCj4g
Cj4gPiAKPiA+IFllYWghCj4gPiA+IAo+ID4gPiBhZGFtCj4gPiA+ID4gcmVnYXJkcywKPiA+ID4g
PiAgICAgICAgICBvLgo+ID4gPiA+IAo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWog
SmlybWFuIDxtZWdpQHhmZi5jej4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICAgZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oIHwgNCArKy0t
Cj4gPiA+ID4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmggYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmgKPiA+ID4gPiA+ID4gaW5k
ZXggNGI2YjI4YzA1Yjg5Li43NDA5OGRkYmVlYjMgMTAwNjQ0Cj4gPiA+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jb21tb24uaAo+ID4g
PiA+ID4gPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lz
cDEtY29tbW9uLmgKPiA+ID4gPiA+ID4gQEAgLTMzLDggKzMzLDggQEAgc3RydWN0IGRlbnRyeTsK
PiA+ID4gPiA+ID4gICAjZGVmaW5lIFJLSVNQMV9JU1BfU0RfU0lOSyAgICAgICAgICAgICAgICAg
QklUKDEpCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAgIC8qIG1pbiBhbmQgbWF4IHZhbHVlcyBm
b3IgdGhlIHdpZHRocyBhbmQgaGVpZ2h0cyBvZiB0aGUgZW50aXRpZXMgKi8KPiA+ID4gPiA+ID4g
LSNkZWZpbmUgUktJU1AxX0lTUF9NQVhfV0lEVEggICAgICAgICAgICAgICAgICAgICAgIDQwMzIK
PiA+ID4gPiA+ID4gLSNkZWZpbmUgUktJU1AxX0lTUF9NQVhfSEVJR0hUICAgICAgICAgICAgICAg
ICAgICAgIDMwMjQKPiA+ID4gPiA+ID4gKyNkZWZpbmUgUktJU1AxX0lTUF9NQVhfV0lEVEggICAg
ICAgICAgICAgICAgICAgICAgIDQ0MTYKPiA+ID4gPiA+ID4gKyNkZWZpbmUgUktJU1AxX0lTUF9N
QVhfSEVJR0hUICAgICAgICAgICAgICAgICAgICAgIDMzMTIKPiA+ID4gPiA+ID4gICAjZGVmaW5l
IFJLSVNQMV9JU1BfTUlOX1dJRFRIICAgICAgICAgICAgICAgICAgICAgICAzMgo+ID4gPiA+ID4g
PiAgICNkZWZpbmUgUktJU1AxX0lTUF9NSU5fSEVJR0hUICAgICAgICAgICAgICAgICAgICAgIDMy
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gLS0KPiA+ID4gPiA+IFJlZ2FyZHMsCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IExhdXJlbnQgUGluY2hhcnQKPiA+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
