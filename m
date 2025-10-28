Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC6ABCCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 09:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybpAdg0/DtL/vVnZlQv131oLjNdIdCSgDRUlvmmXG+c=; b=ZqNtFsla4hv9yJ
	+uvqluqD2htu16+5+2WeVoDNBgeHEOyjJh2VoPvUyvDSy+IwavHWkhVD8LJ8b7xHKX9OaaFXlbZHC
	CKpAbs14RA+2C854/eXag0iPwB3Mh0Z/3cn8/nu7VKanVQ6ra0r9Ka/UUxvLRTnW3fGxDXkkQUb0r
	t71PEX7fgSZhzgfEvTto/ngG8wqcKAGGuu7nsMJ35LZgaLvhgFMz8Q0X0LITw0xyVtrEceZuPB2PV
	ppyJR/c8aZgIL00RICVWHKA8Its8dC+HsrV43mf/d3WA9dDFIjwMax7klJ50tvDm9pScKcers/VT3
	HPEjIMVpLtlC90B2axdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDg6F-0000000FeGC-32Xg;
	Tue, 28 Oct 2025 09:34:43 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDg6D-0000000FeF2-40EN
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 09:34:43 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-63c3c7d3d53so8783611a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Oct 2025 02:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761644080; x=1762248880; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=odW3qtXEWjV0YpOhuEaOM6Q/wDrQniW9fcSMR6G8lw0=;
        b=hSz0ZSKPrQ2dFst1GCqwU7fwP9QHlPpXET09AsclPhDFsbygwesJ6bR16YdWPmuBt4
         ML0uQLXNVeK44s53RPuyupavyil5dfqbQypm91ebV59j4Jb7daXqQtUWcCzA2gz6Qf10
         VawVBtgfQvu8Fyf0W8BTwd+JNxWqK/KhBUEq7kgzhtzTMO5SdgRuE+CqVekRS+F4Bi+s
         ODyhOw01KrHnte5HKPO0tNMj3ZKGR45HiD+FSvLraWw5n4uQwRANp0rahA4m+NdoxANv
         me2KWV/cKKB2HGWOq2r/uEV8s46BL+PIsplD4iQmhh/z0OTpUTg4GYKeFBcS2BmzRL4A
         ijNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761644080; x=1762248880;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=odW3qtXEWjV0YpOhuEaOM6Q/wDrQniW9fcSMR6G8lw0=;
        b=sHKCFuzxlm2xEEeol/gpcNqThGk1RKom79Hi8SgI2DnfTRk5WaXqluGfYh7wulquq1
         c5gj9YQGIzS/x8+I24IY63UwF8MqLIQ2P26/ys6wmztyQpbgM1Z3Z5jGdfPib1XMgcpO
         0WJSZMQ3bokAe2sHyleKfmtqdgMC0Lgn1/RYxtbcybDXWmKVmVcLmkZO2zs2OcogP1+f
         mtLey/EkPXtMGy0q6/pYxWwYhzN806wLm/U6K17FYBX1wTtm3yQzKSX/Wet6Nw/CPgDE
         kxT5RjK0ronC/aPyRSTUphsjelINPnRW7s74CU9oG2UF99jtzHSGGN4YbphGIdGyY4ks
         Djeg==
X-Forwarded-Encrypted: i=1; AJvYcCV7K1sAUaniU5FgQiUThB0XqhqdjHOH6kVrFLD8GDKO6RdJYROP3j1lM7MflQ+P3tkqBTj23QmvU8JJ0TLfYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx89oqSm7+lQ4RD478AVuRG2BGDoLVP5UtJQRi0+scveNmOFAeb
	KmBZyzsZQlSOpFLhgTx84gHCMNTEL6ueEixB6AOU79JIkI6znBgVCig2ybvHYCXv93e98jkBPUH
	po6/kDehe4bTWI7jVH84JLI/zq4y6+gA=
X-Gm-Gg: ASbGncuCQSItuvqI7v7SKphIsoZ3k/1KixS+B49k+zuNn6bwnIfis7oTt8etpr+X2CX
	nRB11Vofubavmzb8wULHc1iBSIGO87ct+HSqsjM7IRtjxz4MHTrMhJSge5LCK3HrK/QORqV/5wJ
	e6vlywgiIWRaUL4K49nrKVpjNk9oSrPDXSzwd98IEoLD+5lrc8AqJB7qpX5FCd4iDwB+WLuiXsz
	+qzUIJEqxjFpwiHWwCNDnSPFFfoLASX0FKvpudgVq5Y9pvrtZUHGm1hX7A=
X-Google-Smtp-Source: AGHT+IGsPCbe8r5dH8aant/YcEWw31jcAKY6dud6j8gJef9y0b9mBgF4kNxJ/GBJ3EJ/6/I5pBM64WHstQkAUKfPv+w=
X-Received: by 2002:a05:6402:84a:b0:63c:533f:4b18 with SMTP id
 4fb4d7f45d1cf-63ed8279e25mr2443085a12.36.1761644079781; Tue, 28 Oct 2025
 02:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-2-linux.amoon@gmail.com> <4fe0ccf9-8866-443a-8083-4a2af7035ee6@rock-chips.com>
In-Reply-To: <4fe0ccf9-8866-443a-8083-4a2af7035ee6@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 28 Oct 2025 15:04:22 +0530
X-Gm-Features: AWmQ_bmPsHqocSX1aRGHrBmzWUPGfL89N89yzNkDBUrKAG5QnhtWURPNx9mXmf8
Message-ID: <CANAwSgRXcg4tO00SNu77EKdp6Ay6X7+_f-ZoHxgkv1himxdi0Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] PCI: dw-rockchip: Add remove callback for resource cleanup
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_023442_028100_B95FA121 
X-CRM114-Status: GOOD (  28.07  )
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

SGkgU2hhd24sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzLgoKT24gVHVlLCAyOCBP
Y3QgMjAyNSBhdCAwNTo1NiwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdy
b3RlOgo+Cj4g5ZyoIDIwMjUvMTAvMjcg5pif5pyf5LiAIDIyOjU1LCBBbmFuZCBNb29uIOWGmemB
kzoKPiA+IEludHJvZHVjZSBhIC5yZW1vdmUoKSBjYWxsYmFjayB0byB0aGUgUm9ja2NoaXAgRGVz
aWduV2FyZSBQQ0llCj4gPiBjb250cm9sbGVyIGRyaXZlciB0byBlbnN1cmUgcHJvcGVyIHJlc291
cmNlIGRlaW5pdGlhbGl6YXRpb24gZHVyaW5nCj4gPiBkZXZpY2UgcmVtb3ZhbC4gVGhpcyBpbmNs
dWRlcyBkaXNhYmxpbmcgY2xvY2tzIGFuZCBkZWluaXRpYWxpemluZyB0aGUKPiA+IFBDSWUgUEhZ
Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGxpbnV4LmFtb29uQGdtYWlsLmNv
bT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMgfCAxMSArKysrKysrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMKPiA+IGluZGV4IDg3ZGQyZGQxODhiNC4uYjg3OGFlOGUyYjNlIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gPiArKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiA+IEBAIC03
MTcsNiArNzE3LDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgcmV0dXJuIHJldDsKPiA+ICAgfQo+ID4KPiA+
ICtzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7
Cj4gPiArICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSBkZXZfZ2V0X2RydmRh
dGEoZGV2KTsKPiA+ICsKPiA+ICsgICAgIC8qIFBlcmZvcm0gb3RoZXIgY2xlYW51cHMgYXMgbmVj
ZXNzYXJ5ICovCj4gPiArICAgICBjbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShyb2NrY2hpcC0+
Y2xrX2NudCwgcm9ja2NoaXAtPmNsa3MpOwo+ID4gKyAgICAgcm9ja2NoaXBfcGNpZV9waHlfZGVp
bml0KHJvY2tjaGlwKTsKPiA+ICt9Cj4KPiBUaGFua3MgZm9yIHRoZSBwYXRjaC4KPgo+IERvdSB5
b3UgbmVlZCB0byBjYWxsIGR3X3BjaWVfaG9zdF9kZWluaXQoKT8KSSBmZWVsIHRoZSByb2NrY2hp
cF9wY2llX3BoeV9kZWluaXQgd2lsbCBwb3dlciBvZmYgdGhlIHBoeQo+IEFuZCBJIHRoaW5rIHlv
dSBzaG91bGQgYWxzbyB0cnkgdG8gbWFzayBQQ0lFX0NMSUVOVF9JTlRSX01BU0tfTUlTQyBhbmQK
PiByZW1vdmUgdGhlIGlycSBkb21haW4gYXMgd2VsbC4KPgo+IGlmIChyb2NrY2hpcC0+aXJxX2Rv
bWFpbikgewo+ICAgICAgICAgaW50IHZpcnEsIGo7Cj4gICAgICAgICBmb3IgKGogPSAwOyBqIDwg
UENJX05VTV9JTlRYOyBqKyspIHsKPiAgICAgICAgICAgICAgICAgdmlycSA9IGlycV9maW5kX21h
cHBpbmcocm9ja2NoaXAtPmlycV9kb21haW4sIGopOwo+ICAgICAgICAgICAgICAgICBpZiAodmly
cSA+IDApCj4gICAgICAgICAgICAgICAgICAgICAgICAgaXJxX2Rpc3Bvc2VfbWFwcGluZyh2aXJx
KTsKPiAgICAgICAgICB9Cj4gICAgICAgICBpcnFfc2V0X2NoYWluZWRfaGFuZGxlcl9hbmRfZGF0
YShyb2NrY2hpcC0+aXJxLCBOVUxMLCBOVUxMKTsKPiAgICAgICAgIGlycV9kb21haW5fcmVtb3Zl
KHJvY2tjaGlwLT5pcnFfZG9tYWluKTsKPiB9Cj4KSSBoYXZlIGltcGxlbWVudGVkIHJlc291cmNl
IGNsZWFudXAgaW4gcm9ja2NoaXBfcGNpZV9yZW1vdmUsCndoaWNoIGlzIGludm9rZWQgd2hlbiB0
aGUgc3lzdGVtIGlzIHNodXR0aW5nIGRvd24uCllvdXIgZmVlZGJhY2sgb24gdGhlIHVwZGF0ZWQg
Y29kZSBpcyB3ZWxjb21lLgoKc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9yZW1vdmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKewogICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZw
ZGV2LT5kZXY7CiAgICAgICAgc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gZGV2X2dl
dF9kcnZkYXRhKGRldik7CiAgICAgICAgaW50IGlycTsKCiAgICAgICAgaXJxID0gb2ZfaXJxX2dl
dF9ieW5hbWUoZGV2LT5vZl9ub2RlLCAibGVnYWN5Iik7CiAgICAgICAgaWYgKGlycSA8IDApCiAg
ICAgICAgICAgICAgICByZXR1cm47CgogICAgICAgIC8qIFBlcmZvcm0gb3RoZXIgY2xlYW51cHMg
YXMgbmVjZXNzYXJ5ICovCiAgICAgICAgLyogY2xlYXIgdXAgSU5UUiBzdGFhdHVzIHJlZ2lzdGVy
ICovCiAgICAgICAgcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLCAweGZmZmZmZmZm
LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRV
U19NSVNDKTsKICAgICAgICBpZiAocm9ja2NoaXAtPmlycV9kb21haW4pIHsKICAgICAgICAgICAg
ICAgIGludCB2aXJxLCBqOwogICAgICAgICAgICAgICAgZm9yIChqID0gMDsgaiA8IFBDSV9OVU1f
SU5UWDsgaisrKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHZpcnEgPSBpcnFfZmluZF9tYXBw
aW5nKHJvY2tjaGlwLT5pcnFfZG9tYWluLCBqKTsKICAgICAgICAgICAgICAgICAgICAgICAgaWYg
KHZpcnEgPiAwKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlycV9kaXNwb3NlX21h
cHBpbmcodmlycSk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICBpcnFfc2V0X2No
YWluZWRfaGFuZGxlcl9hbmRfZGF0YShpcnEsIE5VTEwsIE5VTEwpOwogICAgICAgICAgICAgICAg
aXJxX2RvbWFpbl9yZW1vdmUocm9ja2NoaXAtPmlycV9kb21haW4pOwogICAgICAgIH0KCiAgICAg
ICAgY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmNsa19jbnQsIHJvY2tjaGlw
LT5jbGtzKTsKICAgICAgICAvKiBwb3dlcm9mZiB0aGUgcGh5ICovCiAgICAgICAgcm9ja2NoaXBf
cGNpZV9waHlfZGVpbml0KHJvY2tjaGlwKTsKICAgICAgICAvKiByZWxlYXNlIHRoZSByZXNldCAq
LwogICAgICAgIHJlc2V0X2NvbnRyb2xfYXNzZXJ0KHJvY2tjaGlwLT5yc3QpOwogICAgICAgIHBt
X3J1bnRpbWVfcHV0X3N5bmMoZGV2KTsKICAgICAgICBwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsK
ICAgICAgICBwbV9ydW50aW1lX25vX2NhbGxiYWNrcyhkZXYpOwp9Cgo+IEFub3RoZXIgdGhpbiBJ
IG5vdGljZWQgaXMgc2hvdWxkIHdlIGNhbGwgcG1fcnVudGltZV8qIGhlcmUgZm9yIGhvcGUgdGhh
dAo+IGdlbnBkIGNvdWxkIGJlIHBvd2VyZWQgZG9udyBvbmNlIHJlbW92ZWQ/Cj4KSSBjb3VsZCBu
b3QgZmluZCAnZ2VucGQnIChwb3dlciBkb21haW4pIHVzZWQgaW4gdGhlIFBDSWUgZHJpdmVyCklm
IHdlIGhhdmUgYW4gZXhhbXBsZSB0byB1c2UgZ2VucGQgSSB3aWxsIHVwZGF0ZSB0aGlzLgoKSSBh
bSBhbHNvIGxvb2tpbmcgaW50byBhZGRpbmcgTk9JUlFfU1lTVEVNX1NMRUVQX1BNX09QUwoKVGhh
bmtzCi1BbmFuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
