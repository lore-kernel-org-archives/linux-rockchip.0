Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF93EC4451B
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 10:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltBOw9wtcqaMZ86uKfs1nwGI5S4fcd48+9M2mK+T0Rs=; b=XxBSRGj4cv00kg
	Voci427Oxo2Jc5ANNjJZ7C6bbcZe2OkFvLK9MTunFe/snacpM07emOKFijBqVvSaHpPnslPQOPndE
	1gYuc7mOVsab2OOPfqZEO6LMLfCmooUstxKWhtCjoasSG0RtwQU+EdgxC683ui+Se1aTB3k1a3E7O
	ZH2JM8Yef6K0vdjR2I76ibhN/KoRs/c36Qm8z1L5kAj6gj9P+ZPUMVBOEDXgVD2O5InaYpV/lNv8u
	Bc2h+/DKVCOySRtW3VLDQFDgTYLvTla0G+PfhhKkgUaBEvw5mB3I57ucJQdTluvrUxd7diGVpF7KH
	3Jw6mDTrYl9GhSU9TGhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl2fe-000000041IY-3haY;
	Sat, 18 Jul 2026 10:53:26 +0000
Received: from mail-yx1-xb12f.google.com ([2607:f8b0:4864:20::b12f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl2fb-000000041Ht-3yeX
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 10:53:25 +0000
Received: by mail-yx1-xb12f.google.com with SMTP id 956f58d0204a3-664a5193741so1081284d50.1
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 03:53:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784372003; cv=none;
        d=google.com; s=arc-20260327;
        b=SN/yABEYxnI+FKc0x4pS5KZ7G5QphMoVzb6WOORTPQEj5UECt6t/pRSc9/t56gDOeg
         zOddDW3+VgMsA9dN+TLXhMtCiwGtuxiqYjMoC6c3enPUsgHE6usWqJXbt5NkiZkB6fTo
         BazJ5uca0k7YWKBYJJtGHYUUZk/2iKF8JCWjX48Jv7C4MNdmUcEO63AWzyDR2G2VRTQe
         kmdtIurhI9hu8rLHUhGEJ55710HId9D3AfuD/MoRYP8j5rs74AT6IU7m4Fb2i5FO4QDM
         rcz8OBZiwYcf9X+W/XZUEgVLmUl2DtmplXkDymym+q01gZJirY7CEgajZ+U+r09ab75t
         uB0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g5VfXhgwYuTBmwNIMAkrlRtJzbyswvn4JxfZ/7609S8=;
        fh=GPO2xEgwMD49ah1dYTJoUEywKxbOwWkNfnart8C4XeQ=;
        b=nynFSuXgpzUM+uvMWhMnqLDG5kd7ZerUGyUEXNS84s6e0JRLN7yV6I0gqdroOnbm0V
         cpGDtmn6aPB3YRr4dNCudteXU/KaagDkMpIw5uCmi/DHW3cQR/gzqtXm7UuzT37/U8XF
         iIEEGCPsRhuS7j0wqE4zd9/k7w5YTgGP7tgjJtlTMcR9hNjpllGhVt/L++2NT6r1xVX1
         NozE0xvei3w2S6baO5civwW0H4kUE5Qvpn2XSSbmKyyGOzk871XqYdXFcm50yS6zIN/s
         mFYDbzn4j7dHvnjOXbYJR//BkHX5ng0GJvuvLCNww1+Xl9dW+VDsjem5wZ6xzBjVHsRS
         25gQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784372003; x=1784976803; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=g5VfXhgwYuTBmwNIMAkrlRtJzbyswvn4JxfZ/7609S8=;
        b=gRioDwQtoXVtch8/C8NgF4EhGBNQid8dCJxbt5iHI5PqHcHVwEngrQtjG1ISzpwRU9
         dPPlV1p09po+lJ+2sF2H/G2eE+fG843Ef4o/okuB0OIzETJt2ufT9icieCZq+uUnj1ZE
         drov/+aX0eFwN/YRa1A+HlQe2887pQiGjUGyLDqRt2Tstgsg5vwNOxRyjv6ee6vUnxC3
         n+mx2Y27zKCSmbTyqo3EFl1DwI71Ka4vrtj9rzCdvfPJsbRb6sCcR+0ftVdXm7oqwJws
         YB0C3E1YgbPkCAm5DrmCe4iDgLR4LVTc1ZRYQ57vtiSg+IVeyuywBXYjUzEL3r5kJUUI
         sVJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784372003; x=1784976803;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g5VfXhgwYuTBmwNIMAkrlRtJzbyswvn4JxfZ/7609S8=;
        b=APjjTLXSKe2v7XBbWyab3ROAw/pdE3zMk3V6rBm7zfmggV4tR18t44Ha5tG29ahyIP
         94ngXmleiNlZQr4m22k2axS6FLzMjEVC+D+MlaR1tQfA4+S17TKuPPMxNkIiaCGz8RHJ
         TXJiCuPbQu+ewPwT7PFaAkhVng+NsUaSKou1Tdzy7391WuM/Wt0Ifv9FJcrhQPdAJ3B8
         vdfmpxt8pRMYvNUNNlnwCU1hACtHZsyrTI/YgkFvtInwX7qnmaWcRvwLnui6wsHV48Ex
         Tus78CBprkJjeB2zIaJq1YrLauNNmagRmVpnuQet1RBKEx3NJcd8xojuuRbThq8og4W1
         NmQg==
X-Forwarded-Encrypted: i=1; AHgh+RoTADQvnkXWRUZiuNMEPUpioe+OmXrOLM8v0A41V8g+Ld9mbYZLLrApR1CD7YPPbg+q4qZnF2twJ7J0yu+/ZA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtOrcxhRTbLIb+QcikqNvnlk0SOwrzARlNxYClULQjI/8VA6b3
	HY8C4F9qN25hO8bz6dtyUdhNzIExp8rpbZnamj9zepE9rGNmM3aYk3PeJ6rigNlm1Pgi47o/3Ib
	vkPvwCYTl4ZZ3/dwFtN/ETyLzZ202c4A=
X-Gm-Gg: AfdE7ckjn1aTZj78x6tqmrztRs3PnSI/ilKIar+oN2D7YvgCXX9UYcMPIlIpiTFI3BV
	kcRn1u0x6qKpH5ZRPZS2LDhU69MmxszPwVS4HaAzB+Q3EkQo9u9dAZBAHas7B+UKSnY1lqdmJw5
	oOWb4aV3i88fk0mZdrQmF81mwFSzKXJmgZG4X0GAtRptlM1pPBTLwynnBf5UQWF9dXom4uXJ/RD
	opENnavIRAbGeeauc36PRQguU+rREKxfuyFPB8KxEydDhywCR7hRn0SGQ3pVqTaZzweKs1qa4l1
	mH5VMJKjtd4e5UG3AmI=
X-Received: by 2002:a05:690e:458a:20b0:664:f227:385a with SMTP id
 956f58d0204a3-6683bdde001mr1424612d50.6.1784372002826; Sat, 18 Jul 2026
 03:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-3-royalnet026@gmail.com>
 <20260718090955.A79E51F000E9@smtp.kernel.org>
In-Reply-To: <20260718090955.A79E51F000E9@smtp.kernel.org>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sat, 18 Jul 2026 12:53:10 +0200
X-Gm-Features: AUfX_mwF1UuqQgMjQjfeJUF2YEeUCF9mcy5VYFqR6MQOo8I3upFsyKrktRhAwBs
Message-ID: <CAEWPSH6AFkMEVLJQxt4X554w47S6iVzupxh=eL_Rrfbcmb-hkA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] media: synopsys: hdmirx: add HDMI audio capture support
To: sashiko-reviews@lists.linux.dev, 
	Dmitry Osipenko <dmitry.osipenko@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	linux-kernel@vger.kernel.org
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, 
	media-ci@linuxtv.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_035323_998974_3059021A 
X-CRM114-Status: GOOD (  33.28  )
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

PiBEb2VzIHRoaXMgYnl0ZS1zd2FwcGluZyBsb2dpYyBzY3JhbWJsZSB0aGUgZXh0cmFjdGlvbiBv
ZiB0aGUgQ1RTIGFuZCBOCj4gdmFsdWVzIG9uIGxpdHRsZS1lbmRpYW4gYXJjaGl0ZWN0dXJlcz8K
Ck5vLiBUaGlzIGlzIHRoZSBzYW1lIGZpbmRpbmcgYXMgaW4gdGhlIHYyIHJldmlldywgd2hlcmUg
aXQgd2FzIGFscmVhZHkKYW5zd2VyZWQsIGFuZCB0aGUgY29tbWVudCB0aGlzIHYzIGFkZHMgYWJv
dmUgdGhlIHN3YXAgZG9jdW1lbnRzIGV4YWN0bHkKdGhpcy4gVHdvIHByZW1pc2VzIGluIHRoZSBy
ZXBvcnQgZG9uJ3QgbWF0Y2ggdGhlIEFDUiBwYWNrZXQgbGF5b3V0OgpDVFMgZG9lcyBub3QgbGl2
ZSBpbiBQQjAuLlBCMiBhbmQgaXMgbm90IGxpdHRsZS1lbmRpYW4uIFN1YnBhY2tldApieXRlIDAg
aXMgcmVzZXJ2ZWQsIENUU1sxOToxNl0gc2l0cyBpbiBQQjFbMzowXSwgQ1RTWzE1OjhdIGluIFBC
MiBhbmQKQ1RTWzc6MF0gaW4gUEIzIChNU0IgZmlyc3QpLCB3aXRoIE4gbGlrZXdpc2UgaW4gUEI0
Li5QQjYuIFRoZSBwYWNrZXQKZGVjb2RlciBzdG9yZXMgUEIwIGluIHJlZ2lzdGVyIGJpdHMgWzc6
MF0sIHNvIHRoZSBieXRlIHN3YXAgaXMKcHJlY2lzZWx5IHdoYXQgbGluZXMgdGhlIGJ5dGVzIHVw
IGJlZm9yZSB0aGUgMjAtYml0IG1hc2tzLgoKSXQgaXMgYWxzbyB0aGUgcGF0aCB2YWxpZGF0ZWQg
b24gaGFyZHdhcmU6IHdpdGggYSA0NC4xIGtIeiBzb3VyY2UgdGhlCmNhcmQgcmVwb3J0cyA0NC4x
IGtIeiByYXRoZXIgdGhhbiBmYWxsaW5nIGJhY2sgdG8gdGhlIDQ4IGtIeiBkZWZhdWx0LAphbmQg
c2FtcGxlLXJhdGUgc3dpdGNoZXMgYXJlIGZvbGxvd2VkLiBOZWl0aGVyIHdvdWxkIHdvcmsgaWYg
dGhlCmV4dHJhY3Rpb24gcHJvZHVjZWQgZ2FyYmFnZS4KCj4gQ2FuIHRoaXMgbGVhZCB0byBhIHVz
ZS1hZnRlci1mcmVlIGlmIHRoZSBkcml2ZXIgaXMgdW5ib3VuZCB3aGlsZSBhbgo+IGF1ZGlvIHN0
cmVhbSBpcyBhY3RpdmU/CgpObyAtLSB0aGUgc3luY2hyb25pemF0aW9uIHRoZSByZXBvcnQgdHJl
YXRzIGFzIG1pc3NpbmcgaXMgcHJvdmlkZWQgYnkKdGhlIEFMU0EgY29yZSwgYW5kIHJlbHlpbmcg
b24gaXQgaXMgd2h5IHRoZSB2MiB3b3JrYXJvdW5kIHdhcyBkcm9wcGVkCm9uIERtaXRyeSdzIHJl
dmlldyBpbiB0aGUgZmlyc3QgcGxhY2UuCgpUaGUgd29ya2VyIGlzIG9ubHkgZXZlciBhcm1lZCBi
ZXR3ZWVuIGh3X3BhcmFtcygpIGFuZAphdWRpb19zaHV0ZG93bigpLiBJZiBhIGNhcHR1cmUgc3Ry
ZWFtIGlzIHN0aWxsIG9wZW4gd2hlbiB0aGUgY29kZWMKcGxhdGZvcm0gZGV2aWNlIGlzIHVucmVn
aXN0ZXJlZCwgdGVhcmRvd24gZG9lcyBub3QgY29tcGxldGUgdW50aWwgdGhlCnN0cmVhbSBpcyBn
b25lOiBzb2NfY2xlYW51cF9jYXJkX3Jlc291cmNlcygpIGNhbGxzIHNuZF9jYXJkX2ZyZWUoKQoo
c291bmQvc29jL3NvYy1jb3JlLmMpLCB3aGljaCBibG9ja3MgaW4gd2FpdF9mb3JfY29tcGxldGlv
bigpIHVudGlsCnRoZSBsYXN0IGZpbGUgaGFuZGxlIGlzIGNsb3NlZCAoc291bmQvY29yZS9pbml0
LmM6ICJ3YWl0LCB1bnRpbCBhbGwKZGV2aWNlcyBhcmUgcmVhZHkgZm9yIHRoZSBmcmVlIG9wZXJh
dGlvbiIpLiBBIGRpc2Nvbm5lY3RlZCBjYXJkIHN0aWxsCnJvdXRlcyB0aGF0IGZpbmFsIGNsb3Nl
IHRocm91Z2ggdGhlIG9yaWdpbmFsIHJlbGVhc2UgcGF0aAooc25kX2Rpc2Nvbm5lY3RfcmVsZWFz
ZSgpIC0+IGRpc2Nvbm5lY3RlZF9mX29wLT5yZWxlYXNlKCkpLCBzbwpzbmRfcGNtX3JlbGVhc2Uo
KSBydW5zIHNvY19wY21fY2xvc2UoKSAtPiBoZG1pX2NvZGVjIHNodXRkb3duIC0+CmhkbWlyeF9h
dWRpb19zaHV0ZG93bigpLCB3aGljaCBjbGVhcnMgdGhlIHN0cmVhbWluZyBmbGFnIGFuZApjYW5j
ZWxfZGVsYXllZF93b3JrX3N5bmMoKXMgdGhlIHdvcmtlci4KCnBsYXRmb3JtX2RldmljZV91bnJl
Z2lzdGVyKCkgdGhlcmVmb3JlIGNhbm5vdCByZXR1cm4gd2l0aCB0aGUgd29ya2VyCmFybWVkLCBh
bmQgdGhlIGRldm0tYWxsb2NhdGVkIHN0YXRlIGlzIGZyZWVkIG9ubHkgYWZ0ZXIgcmVtb3ZlKCkK
cmV0dXJucy4gVGhlcmUgaXMgbm8gd2luZG93IGZvciB0aGUgd29yayB0byBmaXJlIG9uIGZyZWVk
IG1lbW9yeS4KCkFsc28gZXhlcmNpc2VkIG9uIHRoZSBPcmFuZ2UgUGkgNSBQbHVzOiB1bmJpbmRp
bmcgdGhlIGRyaXZlciB0aHJvdWdoCnN5c2ZzIHdoaWxlIGFyZWNvcmQgd2FzIGFjdGl2ZWx5IGNh
cHR1cmluZy4gVGhlIEFMU0EgZGlzY29ubmVjdCBraWNrcwp0aGUgcmVhZGVyIG91dCB3aXRoIEVO
T0RFViwgdGhlIGZpbGUgaGFuZGxlIGlzIGNsb3NlZCAtLSB3aGljaCBpcwp3aGVyZSBhdWRpb19z
aHV0ZG93bigpIHJ1bnMgYW5kIGNhbmNlbHMgdGhlIHdvcmtlciAtLSBhbmQgb25seSB0aGVuCmRv
ZXMgdGhlIHVuYmluZCBjb21wbGV0ZS4gQSBzdWJzZXF1ZW50IGJpbmQgcmUtcHJvYmVzIGNsZWFu
bHkgYW5kIHRoZQpjYXJkIGNvbWVzIGJhY2suIFRoZSBrZXJuZWwgbG9nIHN0YXlzIGZyZWUgb2Yg
d2FybmluZ3MgdGhyb3VnaG91dC4KCklnb3IKCgpPbiBTYXQsIEp1bCAxOCwgMjAyNiBhdCAxMTow
OeKAr0FNIDxzYXNoaWtvLWJvdEBrZXJuZWwub3JnPiB3cm90ZToKPgo+IFRoYW5rIHlvdSBmb3Ig
eW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkgcmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsIGlz
c3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW0hpZ2hdIEluY29ycmVjdCBieXRlLXN3YXBwaW5nIGxv
Z2ljIGNvbXBsZXRlbHkgc2NyYW1ibGVzIHRoZSBleHRyYWN0aW9uIG9mIEF1ZGlvIENsb2NrIFJl
Z2VuZXJhdGlvbiAoQUNSKSBDVFMgYW5kIE4gdmFsdWVzLCBicmVha2luZyBzYW1wbGUgcmF0ZSBy
ZWNvdmVyeSBvbiBsaXR0bGUtZW5kaWFuIGFyY2hpdGVjdHVyZXMuCj4gLSBbSGlnaF0gVGhlIGBh
dWRpb193b3JrYCBkZWxheWVkIHdvcmsgaXMgbm90IGV4cGxpY2l0bHkgY2FuY2VsbGVkIGluIGBo
ZG1pcnhfcmVtb3ZlKClgLCBsZWFkaW5nIHRvIGEgVXNlLUFmdGVyLUZyZWUgaWYgdGhlIGRyaXZl
ciBpcyB1bmJvdW5kIHdoaWxlIGFuIGF1ZGlvIHN0cmVhbSBpcyBhY3RpdmUuCj4gLS0KPgo+IC0t
LSBQYXRjaCBbMl06IFtQQVRDSCB2MyAyLzRdIG1lZGlhOiBzeW5vcHN5czogaGRtaXJ4OiBhZGQg
SERNSSBhdWRpbyBjYXB0dXJlIHN1cHBvcnQgLS0tCj4gY29tbWl0IGIwNGJjZDIyZjQwYjQyNGFh
YzgyNDEwMDcxNWM0NmY3NjQ1MzE4NzUKPiBBdXRob3I6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0
MDI2QGdtYWlsLmNvbT4KPgo+IG1lZGlhOiBzeW5vcHN5czogaGRtaXJ4OiBhZGQgSERNSSBhdWRp
byBjYXB0dXJlIHN1cHBvcnQKPgo+IFRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgUlggY29u
dHJvbGxlciBleHRyYWN0cyB0aGUgYXVkaW8gc3RyZWFtCj4gZW1iZWRkZWQgaW4gdGhlIGluY29t
aW5nIEhETUkgc2lnbmFsIGFuZCBmZWVkcyBpdCB0byBhbiBvbi1Tb0MgSTJTCj4gY29udHJvbGxl
ci4gRXhwb3NlIGl0IGFzIGFuIEFMU0EgY2FwdHVyZSBkZXZpY2UgYnkgcmVnaXN0ZXJpbmcgdGhl
Cj4gZ2VuZXJpYyBoZG1pLWNvZGVjIGFzIGEgY2hpbGQgb2YgdGhlIGNvbnRyb2xsZXIuCj4KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N5bm9wc3lzL2hkbWlyeC9zbnBz
X2hkbWlyeC5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zeW5vcHN5cy9oZG1pcngvc25wc19o
ZG1pcnguYwo+ID4gaW5kZXggMjVmOGNhMGQ2ZDk0Ni4uMjJmNTBjYmYzZmE3YSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3lub3BzeXMvaGRtaXJ4L3NucHNfaGRtaXJ4
LmMKPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3lub3BzeXMvaGRtaXJ4L3NucHNf
aGRtaXJ4LmMKPgo+IFsgLi4uIF0KPgo+ID4gKy8qIFJlY292ZXIgdGhlIGluY29taW5nIGF1ZGlv
IHNhbXBsZSByYXRlIGZyb20gdGhlIEFDUiBOL0NUUyArIFRNRFMgY2xvY2suICovCj4gPiArc3Rh
dGljIHUzMiBoZG1pcnhfYXVkaW9fZnMoc3RydWN0IHNucHNfaGRtaXJ4X2RldiAqaGRtaXJ4X2Rl
dikKPiA+ICt7Cj4gPiArICAgICB1NjQgdG1kc19jbGssIGZzX2F1ZGlvID0gMDsKPiA+ICsgICAg
IHUzMiBhY3JfY3RzLCBhY3JfbiwgdG1kc3FwY2xrX2ZyZXE7Cj4gPiArICAgICB1MzIgYWNyX3Bi
M18wLCBhY3JfcGI3XzQ7Cj4gPiArCj4gPiArICAgICB0bWRzcXBjbGtfZnJlcSA9IGhkbWlyeF9y
ZWFkbChoZG1pcnhfZGV2LCBDTVVfVE1EU1FQQ0xLX0ZSRVEpOwo+ID4gKyAgICAgaGRtaXJ4X3Jl
YWRsKGhkbWlyeF9kZXYsIFBLVERFQ19BQ1JfUEgyXzEpOwo+ID4gKyAgICAgYWNyX3BiM18wID0g
aGRtaXJ4X3JlYWRsKGhkbWlyeF9kZXYsIFBLVERFQ19BQ1JfUEIzXzApOwo+ID4gKyAgICAgYWNy
X3BiN180ID0gaGRtaXJ4X3JlYWRsKGhkbWlyeF9kZXYsIFBLVERFQ19BQ1JfUEI3XzQpOwo+ID4g
KyAgICAgLyoKPiA+ICsgICAgICAqIFRoZSBwYWNrZXQgZGVjb2RlciBzdG9yZXMgdGhlIEFDUiBz
dWJwYWNrZXQgYnl0ZXMgd2l0aCBwYWNrZXQgYnl0ZQo+ID4gKyAgICAgICogMCBpbiByZWdpc3Rl
ciBiaXRzIFs3OjBdLCBzbyBieXRlLXN3YXAgZWFjaCB3b3JkIHRvIGxpbmUgdGhlIGJ5dGVzCj4g
PiArICAgICAgKiB1cDogQ1RTIGlzIHBhY2tldCBieXRlcyAxLTMgKFBLVERFQ19BQ1JfUEIzXzAp
IGFuZCBOIGlzIHBhY2tldAo+ID4gKyAgICAgICogYnl0ZXMgNC02IChQS1RERUNfQUNSX1BCN180
KSwgMjAgYml0cyBlYWNoLgo+ID4gKyAgICAgICovCj4gPiArICAgICBhY3JfY3RzID0gYmUzMl90
b19jcHUoKF9fZm9yY2UgX19iZTMyKWFjcl9wYjNfMCkgJiAweGZmZmZmOwo+ID4gKyAgICAgYWNy
X24gPSAoYmUzMl90b19jcHUoKF9fZm9yY2UgX19iZTMyKWFjcl9wYjdfNCkgJiAweDBmZmZmZjAw
KSA+PiA4Owo+Cj4gW1NldmVyaXR5OiBIaWdoXQo+IERvZXMgdGhpcyBieXRlLXN3YXBwaW5nIGxv
Z2ljIHNjcmFtYmxlIHRoZSBleHRyYWN0aW9uIG9mIHRoZSBDVFMgYW5kIE4gdmFsdWVzCj4gb24g
bGl0dGxlLWVuZGlhbiBhcmNoaXRlY3R1cmVzPwo+Cj4gU2luY2UgdGhlIEhETUkgQUNSIHBhY2tl
dCB0cmFuc21pdHMgdGhlIDIwLWJpdCBDVFMgdmFsdWUgYWNyb3NzIFBCMCwgUEIxLCBhbmQKPiBQ
QjIsIGFuZCBiZWNhdXNlIGl0IGlzIGxpdHRsZS1lbmRpYW4sIGFwcGx5aW5nIGEgYml0bWFzayBs
aWtlCj4gYWNyX3BiM18wICYgMHhmZmZmZiBuYXRpdmVseSB5aWVsZHMgdGhlIGNvcnJlY3QgQ1RT
IHZhbHVlIHdpdGhvdXQgYW55IHN3YXBzLgo+Cj4gQnkgYnl0ZS1zd2FwcGluZyB0aGUgMzItYml0
IHJlZ2lzdGVyLCB0aGUgYnl0ZXMgYXJlIGNvbXBsZXRlbHkgcmV2ZXJzZWQuCj4gVGhlIHN1YnNl
cXVlbnQgYml0bWFzayBleHRyYWN0cyB0aGUgbG93ZXIgMjAgYml0cyBvZiB0aGUgc3dhcHBlZCB3
b3JkLCB3aGljaAo+IGNvcnJlc3BvbmQgdG8gdGhlIGxvd2VyIG5pYmJsZSBvZiBQQjEsIGFsbCBv
ZiBQQjIsIGFuZCBhbGwgb2YgUEIzLCBkaXNjYXJkaW5nCj4gUEIwIGVudGlyZWx5Lgo+Cj4gVGhl
IHNhbWUgYXBwbGllcyB0byBhY3JfcGI3XzQgdG8gZXh0cmFjdCBOLiBXaWxsIHRoaXMgcmVncmVz
c2lvbiByZXN1bHQgaW4KPiBnYXJiYWdlIHZhbHVlcyBmb3IgYm90aCBhY3JfY3RzIGFuZCBhY3Jf
biwgZm9yY2luZyB0aGUgZHJpdmVyIHRvIGJsaW5kbHkKPiBmYWxsIGJhY2sgdG8gdGhlIGRlZmF1
bHQgc2FtcGxlIHJhdGU/Cj4KPiBbIC4uLiBdCj4KPiA+IEBAIC0yNzg0LDYgKzMwNTIsOSBAQCBz
dGF0aWMgdm9pZCBoZG1pcnhfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
PiAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gICAgICAgc3RydWN0
IHNucHNfaGRtaXJ4X2RldiAqaGRtaXJ4X2RldiA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4K
PiA+ICsgICAgIGlmIChoZG1pcnhfZGV2LT5hdWRpb19wZGV2KQo+ID4gKyAgICAgICAgICAgICBw
bGF0Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcihoZG1pcnhfZGV2LT5hdWRpb19wZGV2KTsKPiA+ICsK
Pgo+IFtTZXZlcml0eTogSGlnaF0KPiBDYW4gdGhpcyBsZWFkIHRvIGEgdXNlLWFmdGVyLWZyZWUg
aWYgdGhlIGRyaXZlciBpcyB1bmJvdW5kIHdoaWxlIGFuIGF1ZGlvCj4gc3RyZWFtIGlzIGFjdGl2
ZT8KPgo+IFRoZSB2MyBjaGFuZ2Vsb2cgbm90ZXMgdGhhdCB0aGUgc3luY2hyb25vdXMgY2FuY2Vs
IGZvciB0aGUgYXVkaW9fd29yawo+IGRlbGF5ZWQgd29yayB3YXMgcmVtb3ZlZCBoZXJlIHVuZGVy
IHRoZSBhc3N1bXB0aW9uIHRoYXQgYXVkaW9fc2h1dGRvd24oKQo+IGhhbmRsZXMgaXQuCj4KPiBI
b3dldmVyLCBBTFNBIGRvZXMgbm90IHN5bmNocm9ub3VzbHkgaW52b2tlIHRoZSBQQ00gLnNodXRk
b3duIGNhbGxiYWNrCj4gd2hlbiBhIGRldmljZSBpcyB1bnJlZ2lzdGVyZWQgaWYgYSB1c2Vyc3Bh
Y2UgYXBwbGljYXRpb24gaG9sZHMgdGhlIGZpbGUKPiBkZXNjcmlwdG9yIG9wZW4uCj4KPiBCZWNh
dXNlIGhkbWlyeF9kZXYgaXMgYWxsb2NhdGVkIHVzaW5nIGRldm1fa3phbGxvYywgaXQgaXMgZnJl
ZWQgaW1tZWRpYXRlbHkKPiBhZnRlciBoZG1pcnhfcmVtb3ZlKCkgcmV0dXJucy4gV2lsbCB0aGUg
dW4tY2FuY2VsbGVkIGF1ZGlvX3dvcmsgZGVsYXllZCB3b3JrCj4gc3Vic2VxdWVudGx5IGZpcmUg
YW5kIGFjY2VzcyB0aGUgZnJlZWQgaGRtaXJ4X2RldiBtZW1vcnk/Cj4KPiA+ICAgICAgIHY0bDJf
ZGVidWdmc19pZl9mcmVlKGhkbWlyeF9kZXYtPmluZm9mcmFtZXMpOwo+ID4gICAgICAgZGVidWdm
c19yZW1vdmVfcmVjdXJzaXZlKGhkbWlyeF9kZXYtPmRlYnVnZnNfZGlyKTsKPgo+IC0tCj4gU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzE4
MDg1NzI4LjY3OTctMS1yb3lhbG5ldDAyNkBnbWFpbC5jb20/cGFydD0yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
