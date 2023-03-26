Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0202FC7619A
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 23:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4FE0iPoayBFhAIXeB5SKvd49I57/3vvZgsC9vexCqI=; b=oIJd4bPmBYTL2M
	Se+38ZKe+SujxxpKN2iIqUgOL+Ql/4q3Y3fgZ9GGGr590ADFFW3yu4ZCbyExF+t5aXo/JYWOmNOdA
	AE/VsgPFF0gwiC/IMTT1vUi+FlyGlTE4+G+GYaGslQdUpbiVFCLv8JmZyxXy6uzVsYnKed22yX2yT
	uKv2hjv84FKb6U3ezFWAGjdqvBWK86DE79TtYLTlU6vD1TkkiP4NSqtyMl+fwk4j85P2xJ43lpE/U
	ERjy8UUuOnGrLC6A0NjBC7SOHxgv77se16KRdtfNWQByIntFPjsRfVtvzyU0o3B0Z5jqv0D1X/XDZ
	MZbTP56j5L6J6p2U7Exw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgZys-009MBf-0s;
	Sun, 26 Mar 2023 23:40:58 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgZyo-009MAY-0a;
	Sun, 26 Mar 2023 23:40:55 +0000
Received: by mail-wr1-x42b.google.com with SMTP id q19so3834312wrc.5;
        Sun, 26 Mar 2023 16:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679874046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P41fXiXFzQYoqX8WCtNc6OtPCt6dlzfDHiVW1ftks0U=;
        b=DZKVCqFvXkjAFNIEU9tnPxhz0A1z7sr/xRDD2Osxcuw1UHLovyd2E/w73Azdi/v1IK
         T0TfaB1yBC6PUwJstC5M3tYU7B5MQCp499TsQ0XtYXkXZwTugsCwWPzkUoE6sYzIEaQ3
         92KUs/yO2PD8/eGX/ZzhBgoVJ5BNj8O9uT7S6ZwyPeyf29jvWORUgWDSfgVcyJvH/NJ6
         VTcZJHGpWcHMo6ocjv+j7JyStaVpbrbCWEfcsW+FROpcAMSr6mM/6D+CRrkoAXRQo16e
         IhqLMs6wAT1rX2RtPq0KzBRvrOK53PPkTT3Smz4GO6BJX8NNrhslcqA8+7F/yxqV+AZh
         lUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679874046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P41fXiXFzQYoqX8WCtNc6OtPCt6dlzfDHiVW1ftks0U=;
        b=ao+0S9ugKWeGJeSnHgdq51Blx1UfXmuFCszAp51K9TkqpmeT7i+obnB3/Z6ZAKAmTH
         7bQFiuyem26puTXpLfNuA4lAVjJHkKetRcKGvm3t0G2Y0MQ6iV0bdON9e6DkVXfwMe85
         7t0QY0yXr820kea/72r57LRJxvGO2TAh9ulv3Jci2M2wacgqZlavdkEGoKwsPAOy+fUP
         mYEqvgwZ0tpWO+Of5pH5Zmefo6jXHE+LdVFjj3zIIpeYzcgdhcoLm3lAOlFrzPUPaF9i
         5jIz999jdo1/ouQWfs9Ezcvq9HwIv6jY79TWgTurE0T+lpKBMqYtP/PpdwUfE+Dd2AbY
         2zXg==
X-Gm-Message-State: AAQBX9ffRFYc+IP+kNSZpTAoB5akXxbVNBaw40HV+V4z9iU7OlMMLn1Y
	mVePhpMOrcc2MZ6h0E/gM0C4qytLvjy6TaYKlic=
X-Google-Smtp-Source: AKy350a2D12GsQXmTxLDNWt04UP2ULZuKv1vaMcFRNA1UNw3Jpqtnb9v04YeMlvUtB7IqpW3VFKFRrAUR8ppjFgh+S0=
X-Received: by 2002:adf:ec82:0:b0:2c7:1745:77ec with SMTP id
 z2-20020adfec82000000b002c7174577ecmr1956907wrn.2.1679874045661; Sun, 26 Mar
 2023 16:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com> <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
 <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com>
 <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org> <CABnpCuAWm7jh19JKukOquPnZCwHoJispgDPGJzjYy6T_BZSnbg@mail.gmail.com>
 <717bfba9-1d70-ef09-9193-853a57117926@linaro.org> <CABnpCuA7V9ti6BOoz+3Mq-f=PwgxL2K7rOhjo6tJ4QquSZbaSA@mail.gmail.com>
 <03ec1aac-3c6d-892f-fad9-f386a5d4d10e@linaro.org> <87cz4v2nr1.fsf@bloch.sibelius.xs4all.nl>
In-Reply-To: <87cz4v2nr1.fsf@bloch.sibelius.xs4all.nl>
From: Shane Francis <bigbeeshane@gmail.com>
Date: Mon, 27 Mar 2023 00:40:34 +0100
Message-ID: <CABnpCuAqT-RtdmeaAqyB_CQkLa=vn8zxF_WkYRnj8FoGJLL=_Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
To: Mark Kettenis <mark.kettenis@xs4all.nl>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_164054_261110_837855E3 
X-CRM114-Status: GOOD (  31.68  )
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

SGkgTWFyawoKPiBUaGF0IGNvZGUgbWFrZXMgYWJzb2x1dGVseSBubyBzZW5zZS4gIFRoaXMgdHJp
ZXMgdG8gdHJhbnNwbGFudAo+IHBoYW5kbGVzIGZyb20gb25lIERUQiBpbnRvIGFub3RoZXIgRFRC
PyAgTWFpbmxpbmUgVS1Cb290IGhhcyBubyBjb2RlCj4gbGlrZSB0aGF0LiAgSSB0aGluayB0aGlz
IGlzIGp1c3QgYnJva2VuIGJleW9uZCByZXBhaXIuCgpZZWFoIGl0cyBhIGR1bWIgYml0IG9mIGNv
ZGUsIG15IGNvbmNlcm4gd2hlbiBsb29raW5nIGF0IHRoZSBSNlMgaXMgdGhhdAp3aGVuIGRldmlj
ZXMgbG9vayB0byBnZXQgbWFpbmxpbmUgc3VwcG9ydCB0aGF0IGFyZSB1bmFibGUgdG8gY2hhbmdl
IHRvCmFub3RoZXIgdWJvb3QgYnVpbGQgKHN1Y2ggYXMgd2hlbiBzZWN1cmUgYm9vdCBpcyBpbnZv
bHZlZCkgdGhvc2Ugd2lsbApoYXZlIGEgaGFyZCB0aW1lIGFzIHRoaXMgQUJJIGJyZWFrYWdlIHNo
aXAgd291bGQgaGF2ZSBkZXBhcnRlZCBsb25nCmFnby4gQW5kIHRoZSBSSzM1ODggc3VwcG9ydCBp
cyB2ZXJ5IG5ldy4uLi4uIEkgdGhvdWdodCBhYm91dCByYWlzaW5nIGl0Cm5vdy4KClRoZSBxdWVz
dGlvbiBmb3IgbWUgaXMgaG93IChpbiB0aGUgZnV0dXJlKSB3aWxsIGRldmljZXMgd2l0aCB0aGlz
IFNvQwphbmQgY2Fubm90IG1vZGlmeSB0aGVpciB1Ym9vdCBtYWtlIHVzZSBvZiB0aGUgbWFpbmxp
bmUga2VybmVsID8KCkkgaGF2ZSBsb29rZWQgaW50byB1bmRvaW5nIHRoaXMgY2xvY2sgY29uZmln
dXJhdGlvbiBkdXJpbmcgZWFybHkga2VybmVsCmJvb3QgYnV0IHRoZSBTb0Mgc2VlbXMgdG8gaGFy
ZCBsb2NrLgoKSSBhcG9sb2dpc2UgaWYgcmFpc2luZyB0aGlzIHBhdGNoIHdhcyBhIGJhZCBpZGVh
IGJ1dCBsaWtlIEkgc3RhdGVkIHRvCktyenlzenRvZiBJIGFtIGp1c3Qgb25ib2FyZGluZyB0aGlz
IGRldmljZSBhcyBhIGhvYmJ5LiBIb3dldmVyCmZyb20gYW4gb3V0c2lkZSBzdGFuZHBvaW50IGhh
dmluZyBhIHBvdGVudGlhbCBicmVha2FnZSBsaWtlIHRoaXMKYmVjYXVzZSBzdGFydGluZyBmcm9t
IDAgbG9va2VkIGNsZWFuZXIgdGhhbiAxIHNlZW1zIGEgYml0IG9kZCB0bwptZS4KClJlZ2FyZHMK
Ck9uIFN1biwgTWFyIDI2LCAyMDIzIGF0IDEwOjQy4oCvUE0gTWFyayBLZXR0ZW5pcyA8bWFyay5r
ZXR0ZW5pc0B4czRhbGwubmw+IHdyb3RlOgo+Cj4gPiBEYXRlOiBTdW4sIDI2IE1hciAyMDIzIDIy
OjAyOjM5ICswMjAwCj4gPiBGcm9tOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296
bG93c2tpQGxpbmFyby5vcmc+Cj4gPgo+ID4gT24gMjYvMDMvMjAyMyAxOTo1MSwgU2hhbmUgRnJh
bmNpcyB3cm90ZToKPiA+ID4+IEJvb3Rsb2FkZXIgYWxzbyBkb2VzIG5vdCB1c2UgbWFpbmxpbmUg
RFRTLCBzbyB3aGVyZSBpcyBleGFjdGx5IHRoZSBwcm9ibGVtPwo+ID4gPgo+ID4gPiBJbiB0aGlz
IGNhc2UgdWJvb3QgZG9lcyBsb2FkIHRoZSB0YXJnZXQgRFRCLCBhbmQgaXQgc2VlbXMgYSBjb21t
b24KPiA+ID4gZnVuY3Rpb24gaW4gcm9ja2NoaXBzCj4gPiA+IGRvd25zdHJlYW0gYm9vdCBwcm9j
ZXNzLCBzZWUgOgo+ID4gPgo+ID4gPiBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgv
dS1ib290L2Jsb2IvZWYxZGQ2NTAwNDJmNjE5MTVjNDg1OWVjYzk0NjIzYTA5YTM1MjlmYS9hcmNo
L2FybS9tYWNoLXJvY2tjaGlwL2tlcm5lbF9kdGIuYyNMNzAKPiA+ID4KPgo+IFRoYXQgY29kZSBt
YWtlcyBhYnNvbHV0ZWx5IG5vIHNlbnNlLiAgVGhpcyB0cmllcyB0byB0cmFuc3BsYW50Cj4gcGhh
bmRsZXMgZnJvbSBvbmUgRFRCIGludG8gYW5vdGhlciBEVEI/ICBNYWlubGluZSBVLUJvb3QgaGFz
IG5vIGNvZGUKPiBsaWtlIHRoYXQuICBJIHRoaW5rIHRoaXMgaXMganVzdCBicm9rZW4gYmV5b25k
IHJlcGFpci4KPgo+ID4gVS1Cb290IGNvbWVzIHdpdGggaXRzIG93biBEVEIsIHNvIHdoYXQgZG9l
cyBpdCBtZWFucyAibG9hZHMgdGhlIHRhcmdldAo+ID4gRFRCIj8gRnJvbSB3aGVyZT8gVGhlIG9u
ZSBhcHBlbmRlZCB0byB0aGUga2VybmVsIHpJbWFnZT8gTm8sIGl0IGNhbm5vdC4uLgo+ID4KPiA+
IEFueSBjb21wb25lbnQgd2hpY2ggb3BlcmF0ZXMgb24gbWFpbmxpbmUgRFRCIG11c3QgY29uZm9y
bSB0byB0aGUKPiA+IGJpbmRpbmdzICh3aXRoIHJlc3BlY3QgdG8gdGhlIEFCSSksIHRodXMgeW91
ciBhcmd1bWVudHMgaGVyZSBtZWFuIHlvdQo+ID4gYXJlIG5vdCBhbGxvd2VkIHRvIGNoYW5nZSBB
QkkgaW4gdGhlIGZ1dHVyZS4gTmV2ZXIuIFRoaXMgY2hhbmdlLAo+ID4gYXNzdW1pbmcgb3JpZ2lu
YWwgYmluZGluZyB3YXMgYnJva2VuLCBjb3VsZCBiZSB3YXJyYW50ZWQuCj4KPiBUaGUgY3VycmVu
dCBtYWlubGluZSBiaW5kaW5nIGlzbid0IGJyb2tlbjsgMCBpcyBhIHBlcmZlY3RseSBmaW5lIGNs
b2NrCj4gaW5kZXguICBUaGUgUkszNTg4IGNsb2NrIGJpbmRpbmdzIGFyZSBhbHJlYWR5IHVzZWQg
YnkgVS1Cb290ICh0b28gbGF0ZQo+IHRvIGZpeCBmb3IgdGhlIDIwMjMuNCByZWxlYXNlIGhhcHBl
bmluZyBpbiBhIGZldyBkYXlzKSBhbmQgT3BlbkJTRAo+ICh0b28gbGF0ZSB0byBmaXggZm9yIHRo
ZSA3LjMgcmVsZWFzZSB0aGF0IHdpbGwgaGFwcGVuIGEgZmV3IHdlZWtzKS4KPiBDaGFuZ2luZyB0
aGUgY2xvY2sgYmluZGluZyB3aWxsIGp1c3QgY3JlYXRlIG1vcmUgY2hhb3MuCj4KPiA8cmFudD4K
Pgo+IFdoYXQgaXMgYnJva2VuIGhlcmUgaXMgdGhlIGRldmVsb3BtZW50IHByb2Nlc3MuICBSb2Nr
Y2hpcCBzaG91bGRuJ3QgYmUKPiBtYWludGFpbmluZyB0aGVzZSBoZWF2aWx5IG1vZGlmaWVkIGZv
cmtzIG9mIFUtQm9vdCBhbmQgdGhlIExpbnV4Cj4ga2VybmVsLiAgQnV0IGF0IHRoZSBzYW1lIHRp
bWUgbWFpbmxpbmUgTGludXggZGV2ZWxvcGVycyBzaG91bGQgbm90IGJlCj4gYXNraW5nIGZvciBh
cmJpdHJhcnkgY2hhbmdlcyB0byB0aGUgZGV2aWNlIHRyZWUgYmluZGluZ3MganVzdCB0bwo+IHNh
dGlzZnkgc29tZSB1bndyaXR0ZW4gcnVsZXMuICBUaGUgY2xvY2sgYmluZGluZ3Mgd2VyZSBvcmln
aW5hbHkKPiBzdWJtaXR0ZWQgd2l0aCBjbG9jayBudW1iZXJzIGlkZW50aWNhbCB0byB0aG9zZSB0
aGF0IFJvY2tjaGlwIHVzZXM6Cj4KPiAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIy
MDYyMzE2MDMyOS4yMzk1MDEtMi1zZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tLwo+Cj4g
YnV0IHRoZW4gY2hhbmdlZCBiZWNhdXNlIGEgcmV2aWV3ZXIgd2FudGVkIHRoZW0gdG8gc3RhcnQg
YXQgMCBhbmQKPiBkaWRuJ3Qgd2FudCBhbnkgaG9sZXM6Cj4KPiAgIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8wODQxNzQxYS0yMmY2LTQwZjYtYzc0NS02MDY1ZGZkYmNiMWRAbGluYXJvLm9y
Zy8KPgo+IFRoaXMgaXNuJ3QgdGhlIGZpcnN0IGV4YW1wbGUgd2hlcmUgdGhpcyBoYXBwZW5lZC4g
IEFuZCBpdCBpbnZhcmlhYmx5Cj4gbGVhZHMgdG8gY29uZnVzaW9uIGFuZCBicmVha2FnZSBpbiBw
cm9qZWN0cyB0aGF0IHRyeSB0byBmb2xsb3cgdGhlCj4gbWFpbmxpbmUgTGludXggZGV2aWNlIHRy
ZWUgYmluZGluZ3MuCj4KPiA8L3JhbnQ+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
