Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA3D6C76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 15:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpqgCmjHaNQjiacH28PSbRRXKfklJLYSUXrKJvZbQdg=; b=t0+VPCJD+6D6jz
	zV51ESmIrX/S9YV0nnGtmbf2o/Q4/lqK9Ujwmb034JTYwdMPIScCSZ87DijF2f8GJkYKZT64xSX/5
	I6OxpqVmCEvmna4jGUjjLndxxT8HxXFQd72MYDhoc5qfsbJsZiL4d6ycoMa25DidBw12Bv9yOUm88
	m/tK5djnERmJKVIXTWAZfukbOqIHzV86zoZp2YPaqPFKv8NqyrFgb3Mlv0uFSMn/r1IWuPuBi0rKo
	qMDClszvYL9cjskyYt6XtOGpG2oGqtwDbMDved8apRR1yMqbf/EqDy90hP1aCIUYy1RtYbbmmNbAD
	Bb9u0Mcx6ACcrwG35+uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piGM2-007qzE-1l;
	Fri, 31 Mar 2023 15:07:50 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piGLz-007qxv-2G
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Mar 2023 15:07:49 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id x8so16486204qvr.9
        for <linux-rockchip@lists.infradead.org>; Fri, 31 Mar 2023 08:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112; t=1680275266;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A12k4KB7ebXlDgbV8iGTgTpjb9CZpe/iCFGufVrwogk=;
        b=3qdTx722YwxkHAtxvy1VcRPVzeSppIZZUpd4Ue1d6L4glpGtNWvZHh9bVaBSusS8ay
         Wl/pD5Cew3yHVv3hGo/oSWUvINtlUJZoQVQKXSiBh01mPUx2+CAxSokhAAq5jYGGzM/V
         nI5Zk/HzHivGGjtO5vgjUY9yFDmdC/ndrx3ESo4FYCZNkyKoYqAZNBqQrx6BEPQ3LGl7
         PvmUVM1yQ/DokeO9qmNbjZrPVBvLSjkPf5qHBjW6rrfDF7vrxqkzv3ciLgen+XGJkQlO
         jfs8AEVqfZSEVX3h1OfQfKWpgGsEJZ7kiWtuFVrZmTjfGtK2WalmPaotGJoRQzIyT7WX
         vvGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680275266;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A12k4KB7ebXlDgbV8iGTgTpjb9CZpe/iCFGufVrwogk=;
        b=OkgiX0MhyP+oUzEi/2u9fu8LKQTgFj5fa/SwCGdwGxoL/2whD3QM0w6pshMfOBXA22
         YTmjuatRd9B/8QHPCllkxMX0nb0kfK8HZkC/RSIqwefsdRftI/OIY/s+8wVZDvLCuvnX
         vCmZI5WT0gSRXDmARAPYSXDOcbFd/6eFTpx2eO6SIKt/bcG/cOM8IMZOTUW1nO7RErJZ
         ZYhHI1mWNnrRQbWYGeVE6BaALmP/MdEL3J+GupZoKPz2aLoaBHTaccfbApeyJ/DtABBi
         Ul1uh+u5qJRS2eXmJSXl5M/D3Ma7wAk4FdhQpIBCzlaDTORO+G0hM7Oct9fcTozZpSu4
         eZmA==
X-Gm-Message-State: AAQBX9eYrAlpA4jWeAE4hQOXnAjWrL0N9GIdmB4Q8zrfU5i0UO9MyeO2
	zTdVB4x4HtA7sKcWuPOuklpexw==
X-Google-Smtp-Source: AKy350acTVSkbB/Xv5a/ig05pzT/j5zP0MCg579jrpttL+7LBR8Fa6PYr2Oj2TKovED/UKAXzXvXeQ==
X-Received: by 2002:a05:6214:f0f:b0:56e:a9d4:428a with SMTP id gw15-20020a0562140f0f00b0056ea9d4428amr40684485qvb.1.1680275266127;
        Fri, 31 Mar 2023 08:07:46 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:a07e::580])
        by smtp.gmail.com with ESMTPSA id mn7-20020a0562145ec700b005dd8b93459fsm657878qvb.55.2023.03.31.08.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 08:07:45 -0700 (PDT)
Message-ID: <1f1a5acbd8951cfec250b78fff5a9fec731c3488.camel@ndufresne.ca>
Subject: Re: [RFC PATCH] media: hantro: respect data_offset in vb2_plane
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Michael Tretter <m.tretter@pengutronix.de>,
 ezequiel@vanguardiasur.com.ar,  p.zabel@pengutronix.de, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl,  linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  kernel@pengutronix.de,
 mtr@pengutronix.de
Date: Fri, 31 Mar 2023 11:07:44 -0400
In-Reply-To: <20230327132324.1781416-1-m.tretter@pengutronix.de>
References: <20230327132324.1781416-1-m.tretter@pengutronix.de>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_080747_962330_887B3EFE 
X-CRM114-Status: GOOD (  34.78  )
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

SGkgTWljaGVhbCwKCkxlIGx1bmRpIDI3IG1hcnMgMjAyMyDDoCAxNToyMyArMDIwMCwgTWljaGFl
bCBUcmV0dGVyIGEgw6ljcml0wqA6Cj4gVGhlIHZiMl9wbGFuZSBpbiB0aGUgdmIyX3Y0bDJfYnVm
ZmVyIG1heSBoYXZlIGEgZGF0YV9vZmZzZXQsIHdoaWNoIGlzCj4gd3JpdHRlbiBieSB1c2VyIHNw
YWNlIHRvIHRlbGwgdGhlIGRyaXZlciB0aGF0IHRoZSBkYXRhIHN0YXJ0cyBhdCBhbgo+IG9mZnNl
dCBpbnRvIHRoZSBidWZmZXIuIEN1cnJlbnRseSB0aGUgaGFudHJvIGRyaXZlciBhc3N1bWVzIHRo
YXQgdGhlCj4gZGF0YSBzdGFydHMgZGlyZWN0bHkgYXQgdGhlIGJhc2UgYWRkcmVzcyBvZiB0aGUg
YnVmZmVyLgo+IAo+IEFkZCB0aGUgZGF0YV9vZmZzZXQgdG8gdGhlIHBsYW5lIGRtYV9hZGRyZXNz
IHRvIG1ha2Ugc3VyZSB0aGF0IHRoZQo+IGVuY29kZXIgYWN0dWFsbHkgcmVhZHMgdGhlIHBsYW5l
IGRhdGEgaWYgdGhlIHVzZXIgc3BhY2UgcHV0IHRoZSBwbGFuZQo+IGRhdGEgYXQgYW4gb2Zmc2V0
IGludG8gdGhlIGJ1ZmZlci4gT3RoZXJ3aXNlIHRoZSBlbmNvZGVkIGRhdGEgbWF5IG5vdCBiZQo+
IHRoZSBkYXRhIHRoYXQgdXNlcnNwYWNlIGV4cGVjdGVkIHRvIGJlIGVuY29kZWQuCj4gCgpUaGUg
ZGF0YV9vZmZzZXQgZm9yIHRoaXMgcHVycG9zZSBoYXZlIGxpbWl0ZWQgdXNlLCBhbmQgdGhpcyB1
c2FnZSBpcyBvbmx5IHZhbGlkCmZvciBlbmNvZGVycyAoT1VUUFVUIHF1ZXVlcykuIFdvdWxkIGl0
IGJlIHBvc3NpYmxlIHRvIHN0YXRlIHRoaXMgY2xlYXJseSBpbiB0aGUKc3ViamVjdCA/Cgo+IAo+
IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRl
Pgo+IC0tLQo+IEhpLAo+IAo+IE1vc3Qgb3RoZXIgZHJpdmVycyBhbHNvIGFzc3VtZSB0aGF0IHRo
ZSBhZGRyZXNzIHJldHVybmVkIGJ5Cj4gdmIyX2RtYV9jb250aWdfcGxhbmVfZG1hX2FkZHIoKSBp
cyB0aGUgc3RhcnQgb2YgdGhlIHBsYW5lIGRhdGEuIE1heWJlIGl0Cj4gd291bGQgYmUgYmV0dGVy
IHRvIGNoYW5nZSB2YjJfZG1hX2NvbnRpZ19wbGFuZV9kbWFfYWRkcigpIHRvIGFscmVhZHkgYWRk
Cj4gdGhlIGRhdGFfb2Zmc2V0IHRvIHRoZSBwbGFuZSBhZGRyZXNzLiBIb3dldmVyLCB0aGVyZSBh
cmUgYSBmZXcgZHJpdmVycwo+IHRoYXQgYWxyZWFkeSBoYXZlIGEgaGVscGVyIHRoYXQgcmVzcGVj
dHMgdGhlIGRhdGFfb2Zmc2V0LCBidXQgdGhhdCBzZWVtcwo+IHRvIGJlIHRoZSBleGNlcHRpb24g
cmF0aGVyIHRoYW4gdGhlIHJ1bGUuCgpJIGhhZCB0aGlzIGRpc2N1c3Npb24gcmVjZW50bHksIGFu
ZCBpdHMgYSBiaXQgaGFyZHdhcmUgc3BlY2lmaWMuIFNvbWUgSFcgbWF5CnN1cHBvcnQgYW55IHJh
bmRvbSBvZmZzZXQsIGluIHdoaWNoIGNhc2UgeW91IHdpbGwgcHJvZ3JhbSB0aGUgb3JpZ2luYWwg
KGFuZAphbGlnbmVkKSBhZGRyZXNzLCBhbmQgcHJvZ3JhbSB0aGUgb2Zmc2V0IGluIHRoZSBIVy4g
QnV0IHNvbWUgSFcgbWF5IG5vdCwgaW4Kd2hpY2ggY2FzZSB5b3UgbmVlZCB0byBhZGQgYWxpZ25t
ZW50IHZhbGlkYXRpb24gaW4gdGhlIGRyaXZlci4KCj4gCj4gV2hhdCBJIGFtIGFjdHVhbGx5IHRy
eWluZyB0byBhY2hpZXZlIGlzIHRvIGltcG9ydCBhIFY0TDJfUElYX0ZNVF9OVjEyCj4gYnVmZmVy
IGZyb20gYSBSb2NrY2hpcCBSR0EyICh3aGljaCBkb2Vzbid0IHN1cHBvcnQgdGhlIG11bHRpLXBs
YW5hciBBUEkpCj4gYXMgYSBWNEwyX1BJWF9GTVRfTlYxMk0gYnVmZmVyIGludG8gdGhlIEhhbnRy
byBKUEVHIGVuY29kZXIgKHdoaWNoCj4gZG9lc24ndCBzdXBwb3J0IFY0TDJfUElYX0ZNVF9OVjEy
KS4gU29sdmluZyB0aGlzIGJ5IGltcG9ydGluZyB0aGUgc2FtZQo+IEZEIGZvciBlYWNoIHBsYW5l
IHdpdGggYSByZXNwZWN0aXZlIG9mZnNldCBpcyBob3cgb25lIHdvdWxkIGltcG9ydCBzdWNoCj4g
YSBidWZmZXIgd2l0aCB0aGUgRFJNIEFQSS4gUGxlYXNlIHRlbGwgbWUsIGlmIG15IGFwcHJvYWNo
IGlzIHdyb25nIGFuZCwKPiBpZiBzbywgaG93IEkgc2hvdWxkIHNvbHZlIGl0IGRpZmZlcmVudGx5
LgoKVGhlIGFwcHJvYWNoIGlzIGZpbmUsIHRoaXMgaXMgdGhlIG9ubHkgdmFsaWQgdXNhZ2Ugb2Yg
ZGF0YV9vZmZzZXQgd2hlbiBwYXNzZWQgYnkKdXNlcnNwYWNlLiBUaG91Z2gsIHlvdSBhcmUgbWFr
aW5nIHlvdXIgbGl2ZSBtdWNoIG1vcmUgZGlmZmljdWx0IHRoZW4gbmVlZGVkLAphZGRpbmcgTlYx
MiAoY29udGlndW91cykgc3VwcG9ydCB0byB0aGUganBlZyBlbmNvZGVyIHNob3VsZCBiZSBmYWly
bHkgZWFzeSB0b28uCgo+IAo+IE1pY2hhZWwKPiAtLS0KPiAgLi4uL3ZlcmlzaWxpY29uL3JvY2tj
aGlwX3ZwdTJfaHdfanBlZ19lbmMuYyAgIHwgMjQgKysrKysrKysrKysrKy0tLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHUyX2h3
X2pwZWdfZW5jLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlw
X3ZwdTJfaHdfanBlZ19lbmMuYwo+IGluZGV4IDgzOTVjNGQ0OGRkMC4uMDVkZjc3NjgxODdkIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBf
dnB1Ml9od19qcGVnX2VuYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9yb2NrY2hpcF92cHUyX2h3X2pwZWdfZW5jLmMKPiBAQCAtMzIsNiArMzIsMTYgQEAKPiAg
Cj4gICNkZWZpbmUgVkVQVV9KUEVHX1FVQU5UX1RBQkxFX0NPVU5UIDE2Cj4gIAo+ICtzdGF0aWMg
ZG1hX2FkZHJfdCByb2NrY2hpcF92cHUyX3BsYW5lX2RtYV9hZGRyKHN0cnVjdCB2YjJfYnVmZmVy
ICp2YiwKPiArCQkJCQkgICAgICAgdW5zaWduZWQgaW50IHBsYW5lX25vKQo+ICt7Cj4gKwlzdHJ1
Y3QgdmIyX3Y0bDJfYnVmZmVyICp2NGwyX2J1ZiA9IHRvX3ZiMl92NGwyX2J1ZmZlcih2Yik7Cj4g
KwlkbWFfYWRkcl90IGJhc2UgPSB2YjJfZG1hX2NvbnRpZ19wbGFuZV9kbWFfYWRkcih2YiwgcGxh
bmVfbm8pOwo+ICsJdW5zaWduZWQgaW50IG9mZnNldCA9IHY0bDJfYnVmLT5wbGFuZXNbcGxhbmVf
bm9dLmRhdGFfb2Zmc2V0Owo+ICsKPiArCXJldHVybiBiYXNlICsgb2Zmc2V0OwoKQXMgdGhlIG9m
ZnNldCBpcyBub3QgYmVpbmcgcGFzc2VkIGFzIGEgY29udHJvbCB0byB0aGUgSFcsIHlvdSBuZWVk
IHRvIGdvIGJhY2sgdG8KdGhlIGRhdGFzaGVldCwgYW5kIGZpZ3VyZS1vdXQgd2hhdCBpcyB0aGUg
cmVxdWlyZWQgYWxpZ25tZW50LiBUaGlzIGFsaWdtZW50IHRoZW4KbmVlZHMgdG8gYmUgdmFsaWRh
dGVkLiBJIGRvbid0IGtub3cgdGhlIGV4YWN0IGFuc3dlciBmb3IgeW91LCB3ZSBkb24ndCBjaGVj
ayB0aGUKZG1hIGFkZHJlc3MgYmVjYXVzZSB0aGV5IGFyZSBhbGwgcGFnZSBhbGlnbmVkLCBzbyBp
dHMgbm90IG5lZWRlZC4KCklmIHRoZSBhbGlnbm1lbnQgaXMgbm90IGFjY2VwdGFibGUsIHlvdSBo
YXZlIHRvIGZhaWwgc3luY2hyb25vdXNseSBpbgpWSURJT0NfUUJVRiwgc28gdGhhdCB1c2Vyc3Bh
Y2Uga25vd3MgYW5kIGNhbiBmYWxsYmFjayB0byBjb3B5LgoKPiArfQo+ICsKPiAgc3RhdGljIHZv
aWQgcm9ja2NoaXBfdnB1Ml9zZXRfc3JjX2ltZ19jdHJsKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUs
Cj4gIAkJCQkJICAgc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiAgewo+IEBAIC03OSwyMyArODks
MjMgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfdnB1Ml9qcGVnX2VuY19zZXRfYnVmZmVycyhzdHJ1
Y3QgaGFudHJvX2RldiAqdnB1LAo+ICAKPiAgCVdBUk5fT04ocGl4X2ZtdC0+bnVtX3BsYW5lcyA+
IDMpOwo+ICAKPiAtCXZlcHVfd3JpdGVfcmVsYXhlZCh2cHUsIHZiMl9kbWFfY29udGlnX3BsYW5l
X2RtYV9hZGRyKGRzdF9idWYsIDApICsKPiArCXZlcHVfd3JpdGVfcmVsYXhlZCh2cHUsIHJvY2tj
aGlwX3ZwdTJfcGxhbmVfZG1hX2FkZHIoZHN0X2J1ZiwgMCkgKwo+ICAJCQkJY3R4LT52cHVfZHN0
X2ZtdC0+aGVhZGVyX3NpemUsCj4gIAkJCSAgIFZFUFVfUkVHX0FERFJfT1VUUFVUX1NUUkVBTSk7
Cj4gIAl2ZXB1X3dyaXRlX3JlbGF4ZWQodnB1LCBzaXplX2xlZnQsIFZFUFVfUkVHX1NUUl9CVUZf
TElNSVQpOwo+ICAKPiAgCWlmIChwaXhfZm10LT5udW1fcGxhbmVzID09IDEpIHsKPiAtCQlzcmNb
MF0gPSB2YjJfZG1hX2NvbnRpZ19wbGFuZV9kbWFfYWRkcihzcmNfYnVmLCAwKTsKPiArCQlzcmNb
MF0gPSByb2NrY2hpcF92cHUyX3BsYW5lX2RtYV9hZGRyKHNyY19idWYsIDApOwo+ICAJCXZlcHVf
d3JpdGVfcmVsYXhlZCh2cHUsIHNyY1swXSwgVkVQVV9SRUdfQUREUl9JTl9QTEFORV8wKTsKPiAg
CX0gZWxzZSBpZiAocGl4X2ZtdC0+bnVtX3BsYW5lcyA9PSAyKSB7Cj4gLQkJc3JjWzBdID0gdmIy
X2RtYV9jb250aWdfcGxhbmVfZG1hX2FkZHIoc3JjX2J1ZiwgMCk7Cj4gLQkJc3JjWzFdID0gdmIy
X2RtYV9jb250aWdfcGxhbmVfZG1hX2FkZHIoc3JjX2J1ZiwgMSk7Cj4gKwkJc3JjWzBdID0gcm9j
a2NoaXBfdnB1Ml9wbGFuZV9kbWFfYWRkcihzcmNfYnVmLCAwKTsKPiArCQlzcmNbMV0gPSByb2Nr
Y2hpcF92cHUyX3BsYW5lX2RtYV9hZGRyKHNyY19idWYsIDEpOwo+ICAJCXZlcHVfd3JpdGVfcmVs
YXhlZCh2cHUsIHNyY1swXSwgVkVQVV9SRUdfQUREUl9JTl9QTEFORV8wKTsKPiAgCQl2ZXB1X3dy
aXRlX3JlbGF4ZWQodnB1LCBzcmNbMV0sIFZFUFVfUkVHX0FERFJfSU5fUExBTkVfMSk7Cj4gIAl9
IGVsc2Ugewo+IC0JCXNyY1swXSA9IHZiMl9kbWFfY29udGlnX3BsYW5lX2RtYV9hZGRyKHNyY19i
dWYsIDApOwo+IC0JCXNyY1sxXSA9IHZiMl9kbWFfY29udGlnX3BsYW5lX2RtYV9hZGRyKHNyY19i
dWYsIDEpOwo+IC0JCXNyY1syXSA9IHZiMl9kbWFfY29udGlnX3BsYW5lX2RtYV9hZGRyKHNyY19i
dWYsIDIpOwo+ICsJCXNyY1swXSA9IHJvY2tjaGlwX3ZwdTJfcGxhbmVfZG1hX2FkZHIoc3JjX2J1
ZiwgMCk7Cj4gKwkJc3JjWzFdID0gcm9ja2NoaXBfdnB1Ml9wbGFuZV9kbWFfYWRkcihzcmNfYnVm
LCAxKTsKPiArCQlzcmNbMl0gPSByb2NrY2hpcF92cHUyX3BsYW5lX2RtYV9hZGRyKHNyY19idWYs
IDIpOwo+ICAJCXZlcHVfd3JpdGVfcmVsYXhlZCh2cHUsIHNyY1swXSwgVkVQVV9SRUdfQUREUl9J
Tl9QTEFORV8wKTsKPiAgCQl2ZXB1X3dyaXRlX3JlbGF4ZWQodnB1LCBzcmNbMV0sIFZFUFVfUkVH
X0FERFJfSU5fUExBTkVfMSk7Cj4gIAkJdmVwdV93cml0ZV9yZWxheGVkKHZwdSwgc3JjWzJdLCBW
RVBVX1JFR19BRERSX0lOX1BMQU5FXzIpOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
