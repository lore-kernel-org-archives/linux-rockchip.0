Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40786CCFA05
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 05:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7TaxexI2Kzc7vQ/7QcXJqW1daxd9ly/e89W948RQtI=; b=q7cmgx7OWldE32
	SOtD5UBDV/oKemPFTgipbpitHqKj4yqjAdqRirrDBSzxHExkjR0SbE+SVwknU1Z39+JheuEARz8+J
	2JvXRLF4ivMRl8Hp2mHm+0ULiNfK7qC2lkNlcdFDtCLPGBjPJfzYFf/grU3fmcaSXDYR0s46oWcRz
	vCcVByD18r8WEIzn8eIqBvRbfRcxgfQ07MpD/XazYkte5kgwVd21Gtn3R7h8bxYHoEB8IRE4NIPMP
	iK06jdYMsvh6ja/G14+XMBVeL4mquVF78yW+h3o4i+aw2YE+cmjVLnMdKSYGvWHrFEfstFNjq/7Sf
	DK+bdUJT5AYp0cunbNig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHFHj-0000000GhO9-3ntX;
	Fri, 07 Nov 2025 05:45:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHFHg-0000000GhNR-3VoK
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 05:45:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id d2e1a72fcca58-7af603c06easo414142b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 21:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762494315; x=1763099115; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6wg2nGX6aFqXgThy+oqw3JxZb/E9R0bH2FID+9HWFig=;
        b=B80bw4k9p0rEhAmXAtbBOhHXgAbWa9WsWcMtXQhhCqt0PZ7DFo7vKBRmxOSpnj8Hr2
         N6XAPDbL7tcGsRay4SO8+i3xN3TzwPb5v++4+rmEethYm4CDnT6GM0m5xytOlGG21USL
         nvJyWhexLgnOcbT+RTdlHSwLCc3eUO/6QkJCBvC7a6M1R/CxRjs1o2LK8FVvSePbbcK6
         ulv0dXSMNdvYOl34D+VskIXtLnidm+9U+ArLCyK0HlBXZvS8YgEtMh35qC4/aLkUJgSV
         sFSCbMW034qPsYWcdqo4vDEdQww2igOtmXyzuMcoQU7Yr2q0d+qKQ690KVcMhgST0bZj
         qIcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762494315; x=1763099115;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6wg2nGX6aFqXgThy+oqw3JxZb/E9R0bH2FID+9HWFig=;
        b=JWEfS3oN1J+YyzHWoQwdWnu6nKKooEPP1q1tKcY7mA0iNQ1/iPJIxeXLa/6UMZ6Lam
         X5G1zuCwQ6v8+qkbJF/aCCVC5qlU3KdnbWbCkvBi0FxWfxyf3+k3azOFyGz0YtzoMENj
         3Bj9YKaeIKvc1aDcAyWFh3oq3wWGt1g/WAiDaEhG8MFTJsXkjVpYxPWwNNPQy4lgqDHZ
         I45sK3S3oHSc9S8MN9QDnh9s591uOi63/hGNAgHlQhUmPb8+3lsuxCikzIgkrEa2JxfL
         CQeR552WgJ+MD5fvgODUVpRcFEdEUZZzMZ2xhPWOGjYG5FFVXQ0g8pZ2X+AK1vDhkTOv
         Vc5w==
X-Forwarded-Encrypted: i=1; AJvYcCV38Nz/2i4+rZyg8XuIEH6qUrE0RUsQ0lkhmoRq+XJyTs2XY9jdMtDL740dLPTFgzA1iDy1e4u5/KxE5chA8g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwD1trPeyjL+5Nmpgx9OKhp3oVWDPtEFNMI7oq+PpYfWoMc0TTC
	rZk4VzYC37gUxnCkTMBq9dhDD64sgaG93GPoDrsKyuqsXSituQGjEZYy
X-Gm-Gg: ASbGncvk3NKWhuAU4iraU5OJ+t824Ag0uf3TixnSQouh/Bs/L5gNgPArVP2EHfxKn0F
	Z6Jk1bc21hPOPMACRftlGhqKzFSx3l+1Iqgf7KhwEYXOQiAL0gh1cgF9y29ExgRHGqmvNiZbhAd
	LmVuvfuiFqBg4C8G5P6w0D+RWM/TCK2yMmDqjoYAMOuhsQ+P/pR1j9W9nkXwzrMKSZe5PeFTfs3
	Ot/EpWrUWyK9x8AFzqiFXwIMMBzb6ciCve4tL2gCEL/kVdbMRkimgpN9GVvOs6l3LIUFn77Zm80
	LqKLOxJtPrjyZ6kIyQxHBZ/TrFir0YkO6yM+pZx+utRzD2534+6FThe57oyYqDCKLgPiJHPqo1w
	ZB18Kd2OkkqbMzK+e3h67/eCsleXo27m7pVQudQs/n9I+aW7v9Z2s4lGK7EuDJ5/ko8iW4Rh8e9
	d3lEmRzVeW3Jc=
X-Google-Smtp-Source: AGHT+IFs4xmBPjKhQDx8H/zt+uSYsPDyhSy02Xe4cpEdlQuCbIIghOhw7URdzsSVFXk9IRU9NXmnRQ==
X-Received: by 2002:a05:6a00:b85:b0:77d:c625:f5d3 with SMTP id d2e1a72fcca58-7b1482acf23mr748935b3a.1.1762494315321;
        Thu, 06 Nov 2025 21:45:15 -0800 (PST)
Received: from ehlo.thunderbird.net ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c9635007sm1579193b3a.2.2025.11.06.21.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 21:45:14 -0800 (PST)
Date: Fri, 07 Nov 2025 13:45:10 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v5_3/3=5D_arm64=3A_dts=3A_rockchip=3A?=
 =?US-ASCII?Q?_Add_devicetree_for_the_9Tripod_X3568_v4?=
User-Agent: K-9 Mail for Android
In-Reply-To: <3719039.iIbC2pHGDl@phil>
References: <20251103171702.1518730-1-coiaprant@gmail.com> <20251103171702.1518730-4-coiaprant@gmail.com> <3719039.iIbC2pHGDl@phil>
Message-ID: <8AD7010C-A0E9-4CF5-B66D-1E1A01CF0B43@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_214516_876657_90EDD45D 
X-CRM114-Status: GOOD (  13.75  )
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

T24gTm92ZW1iZXIgNywgMjAyNSA2OjU0OjQ1IEFNIEdNVCswODowMCwgSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj5BbSBNb250YWcsIDMuIE5vdmVtYmVyIDIwMjUsIDE4
OjE3OjAyIE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ29pYSBQcmFudDoK
Pj4gVGhlIDlUcmlwb2QgWDM1NjggdjQgaXMgYW4gUkszNTY4LWJhc2VkIFNCQywganVzdCBsaWtl
IHRoZSBSSzM1NjgtRVZCLgo+PiBJdCBhbHdheXMgdXNlcyBzb2xkZXJlZCBjb25uZWN0aW9ucyBi
ZXR3ZWVuIHRoZSBYMzU2OENWMi9YMzU2OENWMy9YMzU2OENWNCBjb3JlIGJvYXJkCj4+IGFuZCB0
aGUgWDM1NjhidjQgSS9PIGJvYXJkLgo+PiAKPj4gVGhlIGRpZmZlcmVuY2VzIGJldHdlZW4gdGhl
IGNvcmUgYm9hcmRzCj4+IC0gUENCIHNpemUsIGxheW91dAo+PiAtIENQVSAoUktLMzU2OEIyL1JL
MzU2OEopCj4+IC0gTWVtb3J5IHR5cGUgKEREUjQvTFBERFI0L0xQRERSNFgpIGFuZCBzaXplCj4+
IC0gZU1NQyBzaXplCj4+IC0gRFNJL0VEUCByZXNpc3RvciB2YWx1ZXMKPj4gQWx0aG91Z2ggdGhl
IGNvbXBvbmVudHMgdmFyeSwgdGhleSBtYWludGFpbiBmdWxsIGNvbXBhdGliaWxpdHkuCj4+IAo+
PiBUaGUgWDM1NjggYm9hcmQgaGFzIG11bHRpcGxlIGhhcmR3YXJlIHJldmlzaW9ucywgYW5kIHdl
IGN1cnJlbnRseSBzdXBwb3J0IHY0IChJL08gYm9hcmQpLgo+PiAKPj4gU3BlY2lmaWNhdGlvbjoK
Pj4gLSBTb0M6IFJvY2tDaGlwIFJLMzU2OCBBUk02NCAoNCBjb3JlcykKPj4gLSBlTU1DOiAxNi0x
MjggR0IKPj4gLSBSQU06IDItMTYgR0IKPj4gLSBQb3dlcjogREMgMTJWIDJBCj4+IC0gRXRoZXJu
ZXQ6IDJ4IFlUODUyMVNDIFJHTUlJICgxMC8xMDAvMTAwMCBNYnBzKQo+PiAtIFdpcmVsZXNzIHJh
ZGlvOiA4MDIuMTFiL2cvbi9hYy9heCBkdWFsLWJhbmQKPj4gLSBMRUQ6Cj4+ICAgUG93ZXI6IEFs
d2F5c09uCj4+ICAgVXNlcjogR1BJTwo+PiAtIEJ1dHRvbjoKPj4gICBWT0wrOiBTQVJBREMvMCA8
MzVrIMK1Vj4KPj4gICBWT0wtOiBTQVJBREMvMCA8NDUwayDCtVY+Cj4+ICAgUG93ZXIvUmVzZXQ6
IFBNSUMgUks4MDkKPj4gLSBDQU4KPj4gICBDQU4vMTogNC1waW4gKFBIIDIuMCkKPj4gLSBQV00K
Pj4gICBQV00vNDogQmFja2xpZ2h0IERTSS8wIERTSS8xCj4+ICAgUFdNLzc6IElSIFJlY2VpdmVy
IFttYXkgbm90IGluc3RhbGxdCj4+IC0gVUFSVDoKPj4gICBVQVJULzI6IERlYnVnIFRUTCAtIDE1
MDAwMDAgOE4xICgxLjI1bW0pCj4+ICAgVUFSVC8zOiBUVEwgKFBIIDIuMCkKPj4gICBVQVJULzQ6
IFRUTCAoUEggMi4wKQo+PiAgIFVBUlQvODogQVA2Mjc1UyBCbHVldG9vdGgKPj4gICBVQVJULzk6
IFRUTCAoUEggMi4wKQo+PiAtIEkyQzoKPj4gICBJMkMvMDogUE1JQyBSSzgwOQo+PiAgIEkyQy8x
OiBUb3VjaHNjcmVlbiBEU0kvMCBEU0kvMQo+PiAgIEkyQy80OiBDYW1lcmEKPj4gICBJMkMvNTog
UlRDQDUxIFBDRjg1NjMKPj4gLSBJMlM6Cj4+ICAgSTJTLzA6IG1pbmlIRE1JIFNvdW5kCj4+ICAg
STJTLzE6IFJLODA5IEF1ZGlvIENvZGVjCj4+ICAgSTJTLzM6IEFQNjI3NVMgQmx1ZXRvb3RoIFNv
dW5kCj4+IC0gU0RNTUM6Cj4+ICAgU0RNTUMvMDogbWljcm9TRCAoVEYpIHNsb3QKPj4gICBTRE1N
Qy8yOiBBUDYyNzVTIFNESU8gV2lGaSBjYXJkCj4+IC0gQ2FtZXJhOiAxeCBDU0kKPj4gLSBWaWRl
bzogbWluaUhETUkgLyBEU0kwIChNSVBJL0xWRFMpIC8gRFNJMSAoTUlQSS9FRFApCj4+IC0gQXVk
aW86IG1pbmlIRE1JIC8gTUlDIG9uLWJvYXJkIC8gU3BlYWtlciAvIFNQRElGIC8gMy41bW0gSGVh
ZHBob25lcyAvIEFQNjI3NVMgQmx1ZXRvb3RoCj4+IC0gVVNCOgo+PiAgIFVTQiAyLjAgSE9TVCB4
Mgo+PiAgIFVTQiAyLjAgSE9TVCB4MyAoNC1waW4pCj4+ICAgVVNCIDIuMCBPVEcgeDEgKHNoYXJl
ZCB3aXRoIFVTQiAzLjAgT1RHL0hPU1QpIFtzbG90IG1heSBub3QgaW5zdGFsbF0KPj4gICBVU0Ig
My4wIEhPU1QgeDEKPj4gICBVU0IgMy4wIE9URy9IT1NUIHgxCj4+IC0gU0FUQTogMXggU0FUQSAz
LjAgd2l0aCBQb3dlci80LXBpbiBbc2xvdCBtYXkgbm90IGluc3RhbGxdCj4+IC0gUENJZTogMXgg
UENJZSAzLjAgeDIgKHg0IGNvbm5lY3RlcikgW3Bvd2VyL2Nsb2NrL3Nsb3QgbWF5IG5vdCBpbnN0
YWxsXQo+PiAKPj4gTGluazoKPj4gLSBodHRwczovL2FwcGxldHNhcGkuNTJzb2x1dGlvbi5jb20v
bWVkaWEvWDM1NjhWNCVFNSVCQyU4MCVFNSU4RiU5MSVFNiU5RCVCRiVFNyVBMSVBQyVFNCVCQiVC
NiVFNiU4OSU4QiVFNSU4NiU4Qy5wZGYKPj4gLSBodHRwczovL2Jsb2cuZ292LmNvb2tpbmcvYXJj
aGl2ZXMvcmVzZWFyY2gtbmluZXRyaXBvZC14MzU2OC12NC1hbmQtZmxhc2guaHRtbAo+PiAKPj4g
U2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KPgo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtOXRyaXBvZC14MzU2
OC12NC12aWRlby1kZW1vLmR0c28gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
OC05dHJpcG9kLXgzNTY4LXY0LXZpZGVvLWRlbW8uZHRzbwo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+PiBpbmRleCAwMDAwMDAwMDAuLmU3ZmExY2E0OAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LTl0cmlwb2QteDM1NjgtdjQtdmlk
ZW8tZGVtby5kdHNvCj4+IEBAIC0wLDAgKzEsMTU0IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgTUlUKQo+PiArCj4+ICsvLyBUaGlzIGlzIGEg
c2FtcGxlIHJlZmVyZW5jZSwgZHVlIHRvIGxhY2sgb2YgaGFyZHdhcmUgY2FuIG5vdCBiZSB0ZXN0
ZWQsIGF0IHlvdXIgb3duIHJpc2sKPgo+YW5kIEkndmUgYWxzbyBkcm9wcGVkIHRoZSAybmQgb3Zl
cmxheSBub3cuCj5QbGVhc2Ugb25seSBldmVyIHN1Ym1pdCBwYXRjaGVzIGZvciBzdHVmZiB5b3Ug
aGF2ZSBhY3R1YWxseSB0ZXN0ZWQuCj4KPldlIGRvbid0IHJlYWxseSBhZGQgc3R1ZmYgd2l0aCAi
dXNlIGF0IHlvdXIgb3duIHJpc2siIGNhdmVhdHMgOy0pCj4KPgo+SGVpa28KPgo+CgpPa2F5LgoK
SSdsbCBhc2sgaWYgYW55b25lIGhhcyBhIGNhbWVyYSBhbmQgYSBzY3JlZW4uClRoaXMgcGFydCBp
cyBleHRyYWN0ZWQgZnJvbSB0aGUgb3JpZ2luYWwgZXF1aXBtZW50IHRyZWUsIGFuZCBoYXMgYmVl
biBjb3JyZWN0ZWQgYnkgcmVmZXJlbmNlIHRvIG90aGVyIGJvYXJkLgoKSWYgSSBjYW4gZmluZCBh
IHRlc3QsIEkgd2lsbCBzdWJtaXQgYSBuZXcgcGF0Y2guCgpUaGFua3MhCldpc2ggaGF2ZSBhIGdv
b2QgZGF5LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
