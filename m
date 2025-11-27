Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25CD5D111A8
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 18:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1lPBgyNcraqO6OBnwPztJ9QUx9l7SrEWWaZnzR7sqU=; b=WFeM1n6sxzguhH
	gONho6zfb6LVdDVA+5tL+shIkSnYIRTCSf4ehKl7XOSNkU8uyhBsw845ur5/IRVEzDja83Dal+p/k
	r2bxHPFU/Gclbg2NWtLpt+SMLNDv6Qryh+ZfkpmEatZgosmJC2g3sveZdxaXTUtWkO5azD+cNtfRs
	kUyuqpNJm/H2KQi537Tsb1GMw4XSeUNI7yw04FN+6u/nV8hb+PdiPrAnfrYju+D2pPxIin8RjI+J1
	pjhJTrkqLT5fS1m9kBK2AQqkhqHkNRUiwiLSccMUFw/XaevjUS+B3CxlpP7NeNq9UB5QBATCkN4yY
	glW1iSqQhQfGqeYh44YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOgYg-0000000H43V-1ycm;
	Thu, 27 Nov 2025 18:17:34 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOgYc-0000000H42F-2xML;
	Thu, 27 Nov 2025 18:17:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1764267379; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VHNPgFqZa0o6809/T+8jHJoMCBYjd2yZiYvEH43ecdDw0RDEoZBASvS8GXIRjf443u9HWsC87weywb65C5DIBcudiiLSfw66tyl4FaLNKaejlEIJIohOY954WwUx+6cfKsQdPDjAUxOAHUCJW2JVa5BuwC53SzyModibprg79Xg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1764267379; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=GA9FTV2ejX5xguOwyiDUL1hpvKOTwyB0xhI2crLeIWM=; 
	b=VzgCDjp9rcRegJe18G1VoZpp248pQnSYb2nnPRvNYWxHUdyyrlHItaUgv2yGSNf+L6cT0ioGjEOUEpK+K0iTAkjcNQ9RhPc7ICm06mhWm7aOWDC7aTqGKcy/QGw9e2DvPfDfeB5pm0C9OwDjdwtPltUGw2ChGO1r7cznhhdiZRQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=ariel.dalessandro@collabora.com;
	dmarc=pass header.from=<ariel.dalessandro@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764267379;
	s=zohomail; d=collabora.com; i=ariel.dalessandro@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=GA9FTV2ejX5xguOwyiDUL1hpvKOTwyB0xhI2crLeIWM=;
	b=MrrmR/EbOR0f5Gb5Xbhy3YhzRySSoWvRdfWRmCgcQVrMezcKplDmR9LS92M5F8YU
	44hmR7lvwMtOD/5nw3ELxQb8PadU5cfnfMx7ngMJ02a3mou1wD1bDW4FltRjo9ZXijV
	BVrAa/6yr4xsF2CvbF/50U6ILU5JghWfinyStD5c=
Received: by mx.zohomail.com with SMTPS id 1764267377521567.410213066609;
	Thu, 27 Nov 2025 10:16:17 -0800 (PST)
Message-ID: <2dd059f5-96d4-44a1-84be-b14dce28cf06@collabora.com>
Date: Thu, 27 Nov 2025 15:15:47 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/12] dt-bindings: net: Convert Marvell 8897/8997
 bindings to DT schema
To: Rob Herring <robh@kernel.org>
Cc: airlied@gmail.com, amergnat@baylibre.com, andrew+netdev@lunn.ch,
 andrew-ct.chen@mediatek.com, angelogioacchino.delregno@collabora.com,
 broonie@kernel.org, chunkuang.hu@kernel.org, conor+dt@kernel.org,
 davem@davemloft.net, dmitry.torokhov@gmail.com, edumazet@google.com,
 flora.fu@mediatek.com, heiko@sntech.de, houlong.wei@mediatek.com,
 jeesw@melfas.com, kernel@collabora.com, krzk+dt@kernel.org, kuba@kernel.org,
 lgirdwood@gmail.com, linus.walleij@linaro.org,
 louisalexis.eyraud@collabora.com, luiz.dentz@gmail.com,
 maarten.lankhorst@linux.intel.com, marcel@holtmann.org,
 matthias.bgg@gmail.com, mchehab@kernel.org, minghsiu.tsai@mediatek.com,
 mripard@kernel.org, p.zabel@pengutronix.de, pabeni@redhat.com,
 sean.wang@kernel.org, simona@ffwll.ch, support.opensource@diasemi.com,
 tiffany.lin@mediatek.com, tzimmermann@suse.de, yunfei.dong@mediatek.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org
References: <20250911151001.108744-1-ariel.dalessandro@collabora.com>
 <20250911151001.108744-4-ariel.dalessandro@collabora.com>
 <20250912140619.GA1293647-robh@kernel.org>
 <fb20e4fe-df0a-4089-a7cf-e82bfe1f8e00@collabora.com>
 <CAL_Jsq+eeiw9oaqQPWt2=rZSX98Pak_oB=tfQFvEehwLZ=S52g@mail.gmail.com>
Content-Language: en-US
From: Ariel D'Alessandro <ariel.dalessandro@collabora.com>
In-Reply-To: <CAL_Jsq+eeiw9oaqQPWt2=rZSX98Pak_oB=tfQFvEehwLZ=S52g@mail.gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_101730_831641_1B8174AC 
X-CRM114-Status: GOOD (  10.36  )
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

SGkgUm9iLAoKT24gMTEvMjQvMjUgMzo1NCBQTSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2Vk
LCBPY3QgMSwgMjAyNSBhdCAxMjoyOOKAr1BNIEFyaWVsIEQnQWxlc3NhbmRybwo+IDxhcmllbC5k
YWxlc3NhbmRyb0Bjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4KPj4gUm9iLAo+Pgo+PiBPbiA5LzEy
LzI1IDExOjA2IEFNLCBSb2IgSGVycmluZyB3cm90ZToKPj4+IE9uIFRodSwgU2VwIDExLCAyMDI1
IGF0IDEyOjA5OjUyUE0gLTAzMDAsIEFyaWVsIEQnQWxlc3NhbmRybyB3cm90ZToKPj4+PiBDb252
ZXJ0IHRoZSBleGlzdGluZyB0ZXh0LWJhc2VkIERUIGJpbmRpbmdzIGZvciBNYXJ2ZWxsIDg4OTcv
ODk5Nwo+Pj4+IChzZDg4OTcvc2Q4OTk3KSBibHVldG9vdGggZGV2aWNlcyBjb250cm9sbGVyIHRv
IGEgRFQgc2NoZW1hLgo+Pj4+Cj4+Pj4gV2hpbGUgaGVyZToKPj4+Pgo+Pj4+ICogYmluZGluZ3Mg
Zm9yICJ1c2IxMjg2LDIwNGUiIChVU0IgaW50ZXJmYWNlKSBhcmUgZHJvcHBlZCBmcm9tIHRoZSBE
VAo+Pj4+ICAgICBzY2hlbWEgZGVmaW5pdGlvbiBhcyB0aGVzZSBhcmUgY3VycmVudGx5IGRvY3Vt
ZW50ZWQgaW4gZmlsZSBbMF0uCj4+Pj4gKiBEVCBiaW5kaW5nIHVzZXJzIGFyZSB1cGRhdGVkIHRv
IHVzZSBibHVldG9vdGggZ2VuZXJpYyBuYW1lCj4+Pj4gICAgIHJlY29tbWVuZGF0aW9uLgo+Pj4+
Cj4+Pj4gWzBdIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnR1c2IudHh0
Cj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBBcmllbCBEJ0FsZXNzYW5kcm8gPGFyaWVsLmRhbGVz
c2FuZHJvQGNvbGxhYm9yYS5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgLi4uL25ldC9ibHVldG9vdGgv
bWFydmVsbCxzZDg4OTctYnQueWFtbCAgICAgIHwgNzkgKysrKysrKysrKysrKysrKysrCj4+Pj4g
ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2J0dXNiLnR4dCAgICAgICAgIHwgIDIgKy0K
Pj4+PiAgICAuLi4vYmluZGluZ3MvbmV0L21hcnZlbGwtYnQtOHh4eC50eHQgICAgICAgICAgfCA4
MyAtLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pgo+Pj4+ICAgIC4uLi9kdHMvcm9ja2NoaXAvcmszMjg4
LXZleXJvbi1maWV2ZWwuZHRzICAgICB8ICAyICstCj4+Pj4gICAgLi4uL2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzI4OC12ZXlyb24tamFxLmR0cyAgIHwgIDIgKy0KPj4+PiAgICBhcmNoL2FybTY0L2Jv
b3QvZHRzL21lZGlhdGVrL210ODE3My1lbG0uZHRzaSAgfCAgMiArLQo+Pj4KPj4+IC5kdHMgZmls
ZXMgc2hvdWxkIGJlIHNlcGFyYXRlIHBhdGNoZXMuIFBsZWFzZSBzZW5kIHRoZSBiaW5kaW5ncyBw
YXRjaGVzCj4+PiBzZXBhcmF0ZWx5IHBlciBzdWJzeXN0ZW0gc28gc3Vic3lzdGVtIG1haW50YWlu
ZXJzIGNhbiBhcHBseSB0aGVtLiBBbGwKPj4+IHRoZSBNZWRpYXRlayBkdHMgY2hhbmdlcyBjYW4g
YmUgMSBzZXJpZXMuCj4+Cj4+IEFjaywgd2lsbCBmaXggaW4gdjMuCj4gCj4gQXJlIHlvdSBnb2lu
ZyB0byBzZW5kIHYzIHN0aWxsPwoKWWVzLCB3aWxsIGJlIHNlbmRpbmcgb3V0IHYzIGFzYXAsIHdp
dGggdGhlIHJlbWFpbmluZyBjaGFuZ2VzLgpTb3JyeSBmb3IgdGhlIGRlbGF5LgoKLS0gCkFyaWVs
IEQnQWxlc3NhbmRybwpTb2Z0d2FyZSBFbmdpbmVlcgoKQ29sbGFib3JhIEx0ZC4KUGxhdGludW0g
QnVpbGRpbmcsIFN0IEpvaG4ncyBJbm5vdmF0aW9uIFBhcmssIENhbWJyaWRnZSBDQjQgMERTLCBV
SyAKUmVnaXN0ZXJlZCBpbiBFbmdsYW5kICYgV2FsZXMsIG5vLiA1NTEzNzE4CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
