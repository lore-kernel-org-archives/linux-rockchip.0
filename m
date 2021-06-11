Return-Path: <SRS0=14fJ=LF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 352BDC48BE0
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 14:40:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA5BD60E09
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 14:40:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EA5BD60E09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ulRZxkH+RQ2ZEKBXcEnDUPEBr0tWf9T0ZghvzJ/d0k=; b=q3j9Pvub9C8lxY
	JM6ZfYDDMmNnQ7Z2DUmugQmhiyHVDtWqk9PTbdFT6oFBcjTjJRrJTNfa+V4YLViP4njR/Y1PVjLYX
	b5enu5LU5B5/THZ4V+DZA0huCLhBPLTsbUYdAzPJ8ft1WYHW8lcpgJHJ67vC+TF/272NoRVEHEqn0
	y92zwH081EdYVuK8AeEFyVRvmWLv1hBpiWXS2VjFnhSAxV7rnSWJwk42XfY4KNojzr0wLUFfmLAzj
	qRyDK2nPSCP74F7p0YwGejYe49obHH7+3a+L80dtidaJYLtcsEK4rF1M2HsnSz5i/pLumWbjBL2GE
	Qu/Ue+GxwloZBCg9y5dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lriKO-005dv7-PU; Fri, 11 Jun 2021 14:40:08 +0000
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lriKC-005dp4-NC; Fri, 11 Jun 2021 14:39:58 +0000
Received: by mail-pl1-f181.google.com with SMTP id 11so2927038plk.12;
 Fri, 11 Jun 2021 07:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=8lYrWaWj8rXB/t2XiDxhDEhaWgsjpf7zHZODYkct5sY=;
 b=oYN9j5Z/Cjd7h021FHyj8wxm8sPCqMSSKS+PshjShNgbATg0/a07QGcEO+TPGy/BcR
 dnNfXLSH/p4J2eBZ+C+EYOutekG4GiJnzsTZlAC/JVREJkDwI3wosR299n4LQHLuMLDt
 7OoIXY+s15J2V/G7504nJ5oNitQNa5eY+LE9cLIEpGhcByotkmlCjHibHFGGDoSQKyTT
 rE6KhxFyg68jWlm+L8EcaAZvxic+wLcjXY3fbgYvWa4cC95z3jJL1pFM6tvm8Jm175wl
 TW9GEu3grV0id3YJEBP4pqcDDcHDpTk/oxs6KLuFEvj8pxcnWT+xPktjhaEtHzixxSiz
 F8mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=8lYrWaWj8rXB/t2XiDxhDEhaWgsjpf7zHZODYkct5sY=;
 b=mi99NFJJQFxfKBIwNtft0i//IrZdx1qOGM/u73m/TTN2LTmTk4Q368TufX0f8E30xz
 gCZQekGN1MrOgLDgpTBJ+Ky3LNzt7oRrfp8F5U6rdtzoaRY42zyEiSk0sqbDtL1MaDwZ
 3T8Vj8Y0AsOdJ/UarbCM+3g3Q4G4DwCmTTg7lUKIx1XjHEhgyGvKgOC5czwBJAjMoZcK
 pf/PUhJrigodsdqX+rUUBsEknv59eLw4J0Lc+jIc1OiPvl6u5HZPY5hRpAvtd5fxs7yk
 xaD/aUPyejOvUvaiP3rMCTlb+k9ZKiobfsj9mh1c5pe98OrgvKeGD+I/+ZGDGt/31QPF
 rK8Q==
X-Gm-Message-State: AOAM5329GEvhGUYNVb+u0/rIw7KEiGfDscFOuVs+zbslyqS/46FpEH1S
 CPo0dIBfiPc4MnYD3srT470=
X-Google-Smtp-Source: ABdhPJwaPJKGmSKoSUrGQKKB1LbnTDaqRXUIvShM3eoRuGHjdDT+qfmx817r+169+oLLB8OLjcRTHQ==
X-Received: by 2002:a17:90a:6002:: with SMTP id
 y2mr9656377pji.197.1623422334188; 
 Fri, 11 Jun 2021 07:38:54 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id fy16sm10572998pjb.49.2021.06.11.07.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Jun 2021 07:38:53 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: helgaas@kernel.org,  robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org,  alexandru.elisei@arm.com,  wqu@suse.com,
 robin.murphy@arm.com,  pgwipeout@gmail.com,  ardb@kernel.org,
 briannorris@chromium.org,  shawn.lin@rock-chips.com
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Update PCI host bridge
 window to 32-bit address memory
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
 <20210607112856.3499682-5-punitagrawal@gmail.com>
 <3105233.izSxrag8PF@diego>
Date: Fri, 11 Jun 2021 23:38:50 +0900
In-Reply-To: <3105233.izSxrag8PF@diego> ("Heiko =?utf-8?Q?St=C3=BCbner=22'?=
 =?utf-8?Q?s?= message of "Thu, 10 Jun 2021 23:50:40 +0200")
Message-ID: <87r1h8ihz9.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_073956_809716_2DAA6B85 
X-CRM114-Status: GOOD (  22.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgSGVpa28sCgpIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cml0ZXM6Cgo+IEhp
LAo+Cj4gQW0gTW9udGFnLCA3LiBKdW5pIDIwMjEsIDEzOjI4OjU2IENFU1Qgc2NocmllYiBQdW5p
dCBBZ3Jhd2FsOgo+PiBUaGUgUENJZSBob3N0IGJyaWRnZSBvbiBSSzMzOTkgYWR2ZXJ0aXNlcyBh
IHNpbmdsZSA2NC1iaXQgbWVtb3J5Cj4+IGFkZHJlc3MgcmFuZ2UgZXZlbiB0aG91Z2ggaXQgbGll
cyBlbnRpcmVseSBiZWxvdyA0R0IuCj4+IAo+PiBQcmV2aW91c2x5IHRoZSBPRiBQQ0kgcmFuZ2Ug
cGFyc2VyIHRyZWF0ZWQgNjQtYml0IHJhbmdlcyBtb3JlCj4+IGxlbmllbnRseSAoaS5lLiwgYXMg
MzItYml0KSwgYnV0IHNpbmNlIGNvbW1pdCA5ZDU3ZTYxYmY3MjMgKCJvZi9wY2k6Cj4+IEFkZCBJ
T1JFU09VUkNFX01FTV82NCB0byByZXNvdXJjZSBmbGFncyBmb3IgNjQtYml0IG1lbW9yeSBhZGRy
ZXNzZXMiKQo+PiB0aGUgY29kZSB0YWtlcyBhIHN0cmljdGVyIHZpZXcgYW5kIHRyZWF0cyB0aGUg
cmFuZ2VzIGFzIGFkdmVydGlzZWQgaW4KPj4gdGhlIGRldmljZSB0cmVlIChpLmUsIGFzIDY0LWJp
dCkuCj4+IAo+PiBUaGUgY2hhbmdlIGluIGJlaGF2aW91ciBjYXVzZXMgZmFpbHVyZSB3aGVuIGFs
bG9jYXRpbmcgYnVzIGFkZHJlc3Nlcwo+PiB0byBkZXZpY2VzIGNvbm5lY3RlZCBiZWhpbmQgYSBQ
Q0ktdG8tUENJIGJyaWRnZSB0aGF0IHJlcXVpcmUKPj4gbm9uLXByZWZldGNoYWJsZSBtZW1vcnkg
cmFuZ2VzLiBUaGUgYWxsb2NhdGlvbiBmYWlsdXJlIHdhcyBvYnNlcnZlZAo+PiBmb3IgY2VydGFp
biBTYW1zdW5nIE5WTWUgZHJpdmVzIGNvbm5lY3RlZCB0byBSb2NrUHJvNjQgYm9hcmRzLgo+PiAK
Pj4gVXBkYXRlIHRoZSBob3N0IGJyaWRnZSB3aW5kb3cgYXR0cmlidXRlcyB0byB0cmVhdCBpdCBh
cyAzMi1iaXQgYWRkcmVzcwo+PiBtZW1vcnkuIFRoaXMgZml4ZXMgdGhlIGFsbG9jYXRpb24gZmFp
bHVyZSBvYnNlcnZlZCBzaW5jZSBjb21taXQKPj4gOWQ1N2U2MWJmNzIzLgo+PiAKPj4gUmVwb3J0
ZWQtYnk6IEFsZXhhbmRydSBFbGlzZWkgPGFsZXhhbmRydS5lbGlzZWlAYXJtLmNvbT4KPj4gTGlu
azogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci83YTFlMmViYy1mN2Q4LTg0MzEtZDg0NC00MWE5
YzM2YTg5MTFAYXJtLmNvbQo+PiBTdWdnZXN0ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFB1bml0IEFncmF3YWwgPHB1bml0YWdyYXdh
bEBnbWFpbC5jb20+Cj4+IFRlc3RlZC1ieTogQWxleGFuZHJ1IEVsaXNlaSA8YWxleGFuZHJ1LmVs
aXNlaUBhcm0uY29tPgo+PiBDYzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPj4g
Q2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+Cj4KPiBqdXN0IGZvciBjbGFyaXR5
LCBzaG91bGQgSSBqdXN0IHBpY2sgdGhpcyBwYXRjaCBzZXBhcmF0ZWx5IGZvciA1LjEzLXJjIHRv
Cj4gbWFrZSBpdCBlYXN5IGZvciBwZW9wbGUgdXNpbmcgY3VycmVudCBrZXJuZWwgZGV2aWNldHJl
ZXMsIG9yIHNob3VsZAo+IHRoaXMgd2FpdCBmb3IgdGhlIHVwZGF0ZSBtZW50aW9uZWQgaW4gdGhl
IGNvdmVyLWxldHRlciByZXNwb25zZQo+IGFuZCBzaG91bGQgZ28gYWxsIHRvZ2V0aGVyIHRocm91
Z2ggdGhlIFBDSSB0cmVlPwoKVGhlIGRldmljZSB0cmVlIGNoYW5nZSBpcyBpbmRlcGVuZGVudCBv
ZiB0aGUgb3RoZXIgcGF0Y2hlcyBpbiB0aGUKc2VyaWVzLiBJdCB3b3VsZCBiZSBncmVhdCBpZiB5
b3UgY2FuIHBpY2sgdGhpcyBvbmUgLSBJIGFtIHdhaXRpbmcgb24KZmVlZGJhY2sgZnJvbSBSb2Ig
YmVmb3JlIHNlbmRpbmcgYW4gdXBkYXRlIG9uIHRoZSByZW1haW5pbmcgcGF0Y2hlcy4KClRoYW5r
cywKUHVuaXQKCj4gSWYgc28sIEkgY2FuIHByb3ZpZGUgYW4KPiBBY2tlZC1ieTogSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPgo+Cj4KPj4gLS0tCj4+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpIHwgMiArLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LmR0c2kKPj4gaW5kZXggNjM0YTkxYWY4ZTgzLi40Yjg1NGViMjFmNzIgMTAwNjQ0
Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+PiBAQCAtMjI3LDcg
KzIyNyw3IEBAIHBjaWUwOiBwY2llQGY4MDAwMDAwIHsKPj4gIAkJICAgICAgIDwmcGNpZV9waHkg
Mj4sIDwmcGNpZV9waHkgMz47Cj4+ICAJCXBoeS1uYW1lcyA9ICJwY2llLXBoeS0wIiwgInBjaWUt
cGh5LTEiLAo+PiAgCQkJICAgICJwY2llLXBoeS0yIiwgInBjaWUtcGh5LTMiOwo+PiAtCQlyYW5n
ZXMgPSA8MHg4MzAwMDAwMCAweDAgMHhmYTAwMDAwMCAweDAgMHhmYTAwMDAwMCAweDAgMHgxZTAw
MDAwPiwKPj4gKwkJcmFuZ2VzID0gPDB4ODIwMDAwMDAgMHgwIDB4ZmEwMDAwMDAgMHgwIDB4ZmEw
MDAwMDAgMHgwIDB4MWUwMDAwMD4sCj4+ICAJCQkgPDB4ODEwMDAwMDAgMHgwIDB4ZmJlMDAwMDAg
MHgwIDB4ZmJlMDAwMDAgMHgwIDB4MTAwMDAwPjsKPj4gIAkJcmVzZXRzID0gPCZjcnUgU1JTVF9Q
Q0lFX0NPUkU+LCA8JmNydSBTUlNUX1BDSUVfTUdNVD4sCj4+ICAJCQkgPCZjcnUgU1JTVF9QQ0lF
X01HTVRfU1RJQ0tZPiwgPCZjcnUgU1JTVF9QQ0lFX1BJUEU+LAo+PiAKPgo+Cj4KPgo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
