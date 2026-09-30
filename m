Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F1BACA5FB1
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 11:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRQ+iE8CSDap4oq+00P4dzRWehd3s5Mp3gDmwkn9T+w=; b=jZ9qWXu8eE5JON
	/nFbv6ksyhSqHKyXMptk2QUzgHrWz28h+/lpUB32rYbSDkh1uvtPCeGwUlNzkJC7vEBDh49Wc6E6F
	caVObQf6afP5ZfTxuOPAS/GJzEAGHnAy14wAby++45OZORWTNQ3VWWFm13m0eYmU0lLZnTn+iph62
	sZFeslApekTXOhqYJ4f1Yt+5GyHdDiulzhyNDzY4JhlURZ9M6q0zu0T+c5ir+8MzNdDVRHPepI9/t
	Dt/fJdEmVt4EstBvIIuYc0mLRmY6e/k+R2kdinBYzxfqeAElMUWTm9RncwWuAUuDaVcQ3DkVIGREr
	WtYpq0Bqs9j6fAvIaepw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBsxf-00000005x00-07UA;
	Wed, 30 Sep 2026 11:58:59 +0000
Received: from mail-ej2-x0f.google.com ([2a00:1450:4864:34::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBsxb-00000005wyQ-2nM6
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Sep 2026 11:58:57 +0000
Received: by mail-ej2-x0f.google.com with SMTP id a640c23a62f3a-c2af7721e4aso773379066b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2026 04:58:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790769533; cv=none;
        d=google.com; s=arc-20260327;
        b=sqbnRgaT4koPqJ+QiFF+EEBqlBjEwmUO3uXcL5SFUFoU/KkrGa1Dd8sE4wMMNLgSk5
         VLeDQ8lOeB2Eeh+BZgPAXXtMmqwQ8A+LvUR7MnvYrYTzmkaeokQHLBz7j0+ok/HMfxDV
         vqPr0to2Ig6fbwKYLX2t2lcJ8CGUBLZ1SVuhuNTinoMq6LGo/nzbHBFniux1lQ/kmAYG
         eF7Mg+1a4gMaoazjMs0N87JzYsWywfru6i2HpVNfoHhCOh07Dw3SM0LS3T0bS6MfURXS
         F2nV72ch+PqJhMK6xLJID96aWj+G2OeRb3WPvoo1/qEWUPtRrYVOcFkV7GtTFIYc1CcS
         15dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6F2ERHZWXw7WA/3EGNJE+vEhgczaBRrblyhbjUi05hs=;
        fh=JS7uN7W+5Pm6NnyOF2mAaT/lFUxKZebr4SVJjmQK5Ww=;
        b=eIocS0w+R/N4lMToXO56piwAGk65phI4ajL0LtATgEaa40yiwaFYc/rX90HhDS6QUS
         PsKJRPC5Gla64t2TzvK5SebHCb9f0U2R8V3p4Q37iEMcnUmaX/5QhSR6hJCMX4wDO/zq
         PKVz504K8SZppQUU+PboXownQineiUZYBdhlGA/nccf/AIDQ45rVYxKDkb4TD18fdan4
         7/pTsB49O9yjQ/KjVE/g3lEp0Z5YwqdT+PRK8zuL1d/FRl58Mz4CR3P+G1UU4kUlK0sp
         HmG2Grlqlhd+NVncrXNNnb2X6ck7AlVWuaDSZx7MzJ4aV23w3R+vzx0dshonS3UOiacC
         OT+g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790769533; x=1791374333; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6F2ERHZWXw7WA/3EGNJE+vEhgczaBRrblyhbjUi05hs=;
        b=V5f2TVQGhK8ofvvfHIBlRzVSolpBjlZzIscUOoPPz0dBX3762msMxEM/qMTM4tNXSn
         lJeIjZeDqplKK1jI3OVbr3e4EBYXYFMpAnhgxWSaOZ5RaT4QrK0jj/9v8+E2Xai810eS
         JMs1Kf2Sn/Mkn2oTW/Fl1XqI5IN2kQDhez/DvLJsE7EyNXFWhKDN4PfNI/u6jitlgRov
         L2oJ1VNlgjPLIsxtV9ZtviT4gok3YDhC93tvqzsGVh5UzuFN2nnkwZ9zvNoef1o9i4Gj
         3gf1oJRY+Ko/GELgyQlE5cqJ6Wq2JkSWwqC+JysX9ZyzFsl5rTjtgQetHoDOuJ4R5AeU
         j1Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790769533; x=1791374333;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6F2ERHZWXw7WA/3EGNJE+vEhgczaBRrblyhbjUi05hs=;
        b=OIL2VR+KRqwffogqeOEUrektOmsh65hexMHguD8WcrblB8eU9IUjYrLoVFAO4NLwgY
         63Fu/zYndEocFJLSa+cbWkD3AKa6IBxoUHh/GzSZB7eNktXIc4GN/AMQq7GIkGGr0v8v
         oo2k0039AWfp/b6GNNl3tuLk8pvWs7fMwL7RzwB0lcb67Xc1cCOAyU4pIu/WfrC62fZZ
         VXi73TUCfosu05whnftJchIgH/AtvHR2ztMRoRCyqJuXvhQVPmq/ON13Vvmj0WWlAgOT
         mp1E4gWGQIeUHCrTFIyUOd/az6N442CpDyyZ/GcwWog4dR2blSYmahV3VJu5qBERIGxo
         vfTA==
X-Forwarded-Encrypted: i=1; AKwUvBw1a3FpS4chDJQyocCAP1T2aV+AhgtJo9IZBaFSSvt8SGjBi2NQ9rytm8vkT5ciVUMBv8S/eei/DpIJgcwXQA==@lists.infradead.org
X-Gm-Message-State: AFuF++lDpCnjSW1QwFhIMhdZrcTuku82Qj4QL2pKTjvgEX9rjwtcBHN0
	oIRcCoV3pqf0fij7CQG+N1Yt5moNwF1qLtAbbEdB2o8pNLY50DEDLwnuysmc1MIpZbh992cQGyR
	mlWxEt/IXK/KdV6EcxxxRD6YZt/sKMmOb/w4CWDdAGg==
X-Gm-Gg: AYBFou0zzchqu19GW6kUPjB1jfo5TGatewgO/HMUBVj3qN88m7XzL4SbWyiHZsw92hO
	THmS6EV5E0r0dhqH2ycsEBem1mMR7eEcTFGbU3zWp8AFLrmO+j2LsaSgTtgTTlWKfRYVjrjNCu8
	Xzl8QKibJDbcxPDNe9dGf7gXUdly0XLRiP1LPRAUQPoDSaPqMTssdTOgYh8PZrZpxnjAasbnVeN
	mIswymceR/QNHf4cD1kVGT8CeGvqlU92Mz5cKEH0WW9br/d2CMzG7FGbSA7nQnVYs1zL7Rq7y2k
	QqCvIAKzkxQLq76tdFAjcDKgw7Jzrx9mfEICOgAQxQCv1CHzOSNx3mc8891hZiln1hfa+6yvP2V
	Jkjrnc7nIkS8GvA==
X-Received: by 2002:a17:907:9708:b0:c26:19de:913a with SMTP id
 a640c23a62f3a-c2e23e58df9mr108073466b.45.1790769533085; Wed, 30 Sep 2026
 04:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
 <20260929-b4-rk3576-reboot-mode-v2-2-5a34ca72065a@flipper.net>
 <20260930-fascinating-cheetah-of-speed-7cccd0@quoll> <eb2d513b-3c7b-4298-932f-8e7cc8d9c08b@kernel.org>
In-Reply-To: <eb2d513b-3c7b-4298-932f-8e7cc8d9c08b@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 30 Sep 2026 15:58:45 +0400
X-Gm-Features: AclHuK9WjZS6N6YQrXd5XAL-P_3Z00CVqfe-4TuT9v8_bFTVQ6par63t-_u8TFM
Message-ID: <CAKTNdwHy41vh_Hp1zOnOtK-v7LvpvH0tgjP0MrMXdtZUqwubnQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: power: reset: syscon-reboot-mode:
 allow supplies
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sre@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_045855_831040_F00DF19F 
X-CRM114-Status: GOOD (  28.14  )
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

T24gV2VkLCBTZXAgMzAsIDIwMjYgYXQgMzo1MOKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAzMC8wOS8yMDI2IDEzOjQ3LCBLcnp5c3p0b2Yg
S296bG93c2tpIHdyb3RlOgo+ID4gT24gVHVlLCBTZXAgMjksIDIwMjYgYXQgMDI6Mjg6MTlQTSAr
MDQwMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPj4gV2hhdGV2ZXIgcHJvZ3JhbSB0aGF0IGFj
dHMgb24gYSByZWJvb3QgbW9kZSBydW5zIGJlZm9yZSBhIGZ1bGwgT1MsIHNvIGl0Cj4gPj4gbWF5
IGxhY2sgdGhlIGNhcGFiaWxpdHkgdG8gZW5hYmxlIHRoZSByZWd1bGF0b3JzIGl0IGRlcGVuZHMg
b24sIGFuZCBhCj4gPj4gcmVzZXQgdGhhdCBwcmVzZXJ2ZXMgdGhlIG1vZGUgcmVnaXN0ZXIgZ2Vu
ZXJhbGx5IGxlYXZlcyB0aGUgcmVndWxhdG9ycyBhcwo+ID4+IHRoZSBwcmV2aW91c2x5IHJ1bm5p
bmcgc3lzdGVtIGxlZnQgdGhlbS4KPiA+Pgo+ID4+IEFsbG93IGEgcmVib290IG1vZGUgbm9kZSB0
byBuYW1lIHN1Y2ggc3VwcGxpZXMsIHNvIHRoYXQgdGhleSBjYW4gYmUKPiA+PiB0dXJuZWQgb24g
d2hpbGUgdGhlIG1vZGUgaXMgYmVpbmcgcmVxdWVzdGVkLgo+ID4+Cj4gPj4gVGVzdGVkLWJ5OiBT
aGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+Cj4gPiBBZ2FpbiBmYWtlIHRh
Zy4KPiA+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBl
ci5uZXQ+Cj4gPj4gLS0tCj4gPj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0
L3N5c2Nvbi1yZWJvb3QtbW9kZS55YW1sICAgICAgIHwgOCArKysrKysrKwo+ID4+ICAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L3N5c2Nvbi1yZWJvb3QtbW9kZS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L3N5c2Nv
bi1yZWJvb3QtbW9kZS55YW1sCj4gPj4gaW5kZXggNzlmZmM3OGIyM2VhLi41ZWQ3MGM4NzI2OWUg
MTAwNjQ0Cj4gPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2Vy
L3Jlc2V0L3N5c2Nvbi1yZWJvb3QtbW9kZS55YW1sCj4gPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L3N5c2Nvbi1yZWJvb3QtbW9kZS55YW1sCj4g
Pj4gQEAgLTM2LDYgKzM2LDE0IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ID4+ICAgICJebW9kZS0u
KiQiOgo+ID4+ICAgICAgbWF4SXRlbXM6IDEKPiA+Pgo+ID4+ICsgICJeW2EtejAtOV0rKC1bYS16
MC05XSspKi1zdXBwbHkkIjoKPiA+PiArICAgIGRlc2NyaXB0aW9uOgo+ID4+ICsgICAgICBTdXBw
bHkgdGhhdCBoYXMgdG8gYmUgcG93ZXJlZCBmb3Igd2hhdGV2ZXIgcHJvZ3JhbSBhY3RzIG9uIHRo
ZSBtb2RlLgo+ID4+ICsgICAgICBUaGF0IGNvdWxkIGJlIGEgYm9vdCBST00gd2l0aCBubyBhY2Nl
c3MgdG8gcmVndWxhdG9ycywgYW5kIGEgd2FybSByZXNldAo+ID4+ICsgICAgICBsZWF2ZXMgdGhl
bSBhcyB0aGUgcHJldmlvdXNseSBydW5uaW5nIHN5c3RlbSBsZWZ0IHRoZW0gYW5kIG5vdCBuZWNl
c3NhcmlseQo+ID4+ICsgICAgICB3aGF0IHRoZWlyIGV4cGVjdGVkIG91dC1vZi1yZWJvb3Qgc3Rh
dGUgaXMuIEFueSBzdXBwbHkgZGVzY3JpYmVkIGhlcmUgaXMKPiA+PiArICAgICAgZW5hYmxlZCB3
aGVuIGEgbW9kZSBpcyByZXF1ZXN0ZWQsIGFuZCBzdGF5cyBlbmFibGVkLgo+ID4KPiA+IFRoaXMg
bG9va3MgbGlrZSB3b3JrYXJvdW5kIGZvciBtaXNzaW5nIHN1cHBseSBoYW5kbGluZyBpbiBhY3R1
YWwKPiA+IGNvbnN1bWVycy4gRml4IHlvdXIgZGV2aWNlcyBpbnN0ZWFkLgo+Cj4gSGVoLCBJIG1p
c3JlYWQgLSB5b3UgbmVlZCB0byBwb3dlciB0aGlzIG9uPyBUaGVuIGhvdyBkb2VzIHlvdXIgYm9h
cmQKPiBwb3dlcnMgaXRzZWxmIGluIHRoZSBmaXJzdCBwbGFjZT8gQW5kIGhvdyBkbyB5b3UgZXZl
biBzb2x2ZSB0aGUKPiBpbmNvcnJlY3QgLSBlLmcuIHRvbyBsb3cgLSB2b2x0YWdlIG9uIHRoZXNl
IHJlZ3VsYXRvcnM/CgpXaGVuIHRoZSBQTUlDIGNvbWVzIG91dCBvZiBhIGNvbGQgcmVzZXQgaXQg
aGFzIGFsbCB0aGUgbmVlZGVkIHJhaWxzCmVuYWJsZWQgYnkgaXRzIHBvd2VyLW9uIGRlZmF1bHQg
c3RhdGUsIHdoaWNoIHRoZSBERFIgdHJhaW5lciByZWxpZXMKb24uIEJ1dCB0aGUgT1Mgd2lsbCBu
b3JtYWxseSBkaXNhYmxlIHRoZSByYWlscyBpdCBrbm93cyBpdCBkb2Vzbid0IHVzZQppdHNlbGYs
IHNvIGEgX3dhcm1fIHJlc2V0IHdoaWNoIGtlZXBzIHRoZSBib290IG1vZGUgYXJndW1lbnQgbGl2
ZSBhbmQKa2VlcHMgdGhlIFBNSUMgcnVubmluZyB3b3VsZCBsZWF2ZSB0aG9zZSByYWlscyBkaXNh
YmxlZCwgdW5sZXNzIHRoZSBPUwpwdXQgdGhlbSBiYWNrIGFzIGl0IGZvdW5kIHRoZW0uCgpTbyB0
byBtYWtlIHdhcm0gcmVzZXRzIHdvcmsgb25lIHdvdWxkIGhhdmUgdG8gZWl0aGVyIGlnbm9yZSB1
bnVzZWQKcmVndWxhdG9ycyBpbiB0aGUgT1MgdG8ga2VlcCBpdCBmcm9tIHBvd2VyaW5nIHRoZW0g
ZG93biAodWdseSksIG9yCm1hcmsgdGhlbSAiYWx3YXlzLW9uIiBpbiBEVCAoYWxzbyB1Z2x5KSwg
b3Igc3RhdGUgdGhhdCB0aGV5IGFyZSBuZWVkZWQKZm9yIHRoZSByZWJvb3QgbW9kZSBmZWF0dXJl
LCBhcyBkb25lIGhlcmUgKHdoaWNoIGlzIGxlYXN0IHVnbHkgSU1PKS4KClRoZSBERFIgdHJhaW5l
ciB1bmZvcnR1bmF0ZWx5IGNhbm5vdCBhY2Nlc3MgdGhlIFBNSUMgYXQgYWxsLCBzbyBpdAp3b24n
dCBiZSBhYmxlIHRvIGVuYWJsZSB0aGUgc3VwcGxpZXMgaXQgbmVlZHMuCgpCZXN0IHJlZ2FyZHMs
CkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
