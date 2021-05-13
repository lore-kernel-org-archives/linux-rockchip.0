Return-Path: <SRS0=l1tV=KI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B29C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 15:01:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 182D861004
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 15:01:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 182D861004
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/zVWaBejjanOr3epr4nt+3usAvoPcDl4COf2Igw6JDg=; b=N2GJWi4PWFX0Qcb2BCPplU/pA
	TuxV0Y9wvD/XdZlk6eJstNSFM9ccV2fMWp99Pr/TfXRUGRjy3ui2eBlnMUdx0kmvtvZl/7PanN5ha
	1VlhtcL7AnF9bOIBbYhhJME7H8bGYFwkrSsg1eE/rwvQJLcqp1f4afo7M/4WQT1WYyTkv7U7KhFwH
	IAW13BAdOZCJMeXShmstQ4Er5Vyf6AkWxG0vDXNLnrCB4osLCZWVSekyb8T04XsEwtyPvF+Lcr0V0
	kTd0Fej8F85nJ+ts+bW5OGJk0kJQaVmE7yiFjyr6fBJGgMGTuSZX50e2r8j/1dNuQx2A1/q7XfkHI
	n/yAPo9mA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhCqA-005ozn-SC; Thu, 13 May 2021 15:01:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhCq9-005ozW-5z
 for linux-rockchip@desiato.infradead.org; Thu, 13 May 2021 15:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=ldgM2NO/Seow+Q56F+YNVD+hDuAL7t+LwPBtglqZh1k=; b=NIXeHALjufs/bn0UDuvLczZHKr
 oYMGta3vsqRmYbjqeuJoUZco6qfOiPbGYZsmzmAU30LYubvdfmpomUpyJxAtIGHzR/owBmjRVooVy
 B0MUCzc/QBhw2iBwkv/uTC2HNGB+hitOXJVlcbsVhVtOEMNlprdAlYseKjlmzMdTRVLqwgHiXCTVO
 vpH7R9sVXWGtdm/vgv4YovaJOIhByQWgZg/t+Y3AW9Vxgg3xijNUw5BqCgUktiSPrMU9nE4USmm2s
 WiD5tNI7xAj+ZaOUVMVg/21SGfZh/KKBCdoH52fFs26gxLnmrDWgIIYeXz+Dcz+AzLyq7YUc8ep58
 tGRXVAkA==;
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhCq6-00BLBx-8C
 for linux-rockchip@lists.infradead.org; Thu, 13 May 2021 15:01:27 +0000
Received: by mail-oi1-x22f.google.com with SMTP id z3so24355822oib.5
 for <linux-rockchip@lists.infradead.org>; Thu, 13 May 2021 08:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ldgM2NO/Seow+Q56F+YNVD+hDuAL7t+LwPBtglqZh1k=;
 b=uYchrcCSs746S+q+9gMFDs6pbFLse8WQ2iy43FWr0fZToAUlq/4rnF1ltQEKoNweE9
 CkkEYo4Eya6PfW2wAroDNcr1tL3SML6J2unwF5momMpunX923eAMlEMk6qYGR8bC1NCR
 ctx9nHfoAzpWkueL6j7Jt+6M9qpgkLEI+r5AK6+eMlGJPSWogR271QQ49emat4oZYOWO
 zG6lhb42WpTw5HEs6ClOhIXmRNItwJqkEH3th/EzSx3UUD0+J8bFW3uCRNtMJn893i8T
 xpjIBeAiFz2e8FgOGIDjfBF5bFM0W7wAPYKIaBi/+Cr+ub2CZDlf5vhQwBKjVreDzSEA
 9eCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ldgM2NO/Seow+Q56F+YNVD+hDuAL7t+LwPBtglqZh1k=;
 b=X4MwxZ3k6Cg41WiZdVdmtaYRe4oF61YnRfcNiqAiK68MnNmbvaxdIXv4F2hQYrquiW
 O63IaCTAtC3K2GBMb/NA8UbGM/CLm5e5D86dDOov4UpHCQpyt+G6+o9Tnsmm6q8xqkwN
 ppP9lzUWcTO4bre0oL4kbVrhD5mH/gm4dE4I/qsjkJrMaCnOZt2zxH+lo7RQxF1Wiar9
 GkMU9mv4/ihzQfXS7Shltf1xmmAtLETN5nXPnudooHX42wvS12T9/5UnPqiby+dEO/cJ
 xqcdkddx4Y3/WsqkO8KRrtn4Pt6vi2C43WiVStpfPKSUhIWyHVWqjxPsn8FSxB/8lcx3
 KKJw==
X-Gm-Message-State: AOAM533jFOJozUlBhpHz0J4m5hCamX579XtH9HwNEYinXWKTSoH0R44U
 Beyrmet60VWRGhOKpXbxLnI=
X-Google-Smtp-Source: ABdhPJyt5yDteKzelnGnRuRCn9CZhQKv5LRroEA1l8WsVRyhotR5+3i5X3VeFHbmGyO221CzU290OQ==
X-Received: by 2002:aca:5d08:: with SMTP id r8mr735254oib.51.1620918084722;
 Thu, 13 May 2021 08:01:24 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id x30sm694721ott.41.2021.05.13.08.01.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 May 2021 08:01:24 -0700 (PDT)
Date: Thu, 13 May 2021 10:01:22 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210513150122.GA8450@wintermute.localdomain>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
 <20210505140854.15929-2-macroalpha82@gmail.com>
 <20210510162329.GD751702@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210510162329.GD751702@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_080126_321934_FBE0BEEA 
X-CRM114-Status: GOOD (  34.20  )
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

T24gTW9uLCBNYXkgMTAsIDIwMjEgYXQgMDU6MjM6MjlQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIFdlZCwgMDUgTWF5IDIwMjEsIENocmlzIE1vcmdhbiB3cm90ZToKPiAKPiA+IEZyb206
IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiAKPiA+IEFkZCByazgx
NyBjb2RlYyBzdXBwb3J0IGNlbGwgdG8gcms4MDggbWZkIGRyaXZlci4KPiA+IAo+ID4gVGVzdGVk
LWJ5OiBNYWNpZWogTWF0dXN6Y3p5ayA8bWFjY3JhZnQxMjNtY0BnbWFpbC5jb20+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IE5p
dDogVGhlc2Ugc2hvdWxkIGJlIGNocm9ub2xvZ2ljYWwuCgpBY2tub3dsZWRnZWQuIEkgd2lsbCBt
YWtlIHN1cmUgdG8gZG8gdGhpcyBpZiBhIHYxMCBpcyBuZWNlc3NhcnkuCgo+IAo+ID4gLS0tCj4g
PiBDaGFuZ2VzIGluIHY5Ogo+ID4gIC0gQWRkIGNvdmVyIGxldHRlci4KPiA+ICAtIFJlbW92ZSBk
b2N1bWVudGF0aW9uIGZvciBpbnRlcnJ1cHQgcGFyZW50IHBlciBSb2IgSGVycmluZydzIHJlcXVl
c3QuCj4gPiAgLSBSZW1vdmUgdW51c2VkIE1PRFVMRV9ERVZJQ0VfVEFCTEUgdG8gZml4IGEgYnVn
IGlkZW50aWZpZWQgYnkga2VybmVsIHRlc3QKPiA+ICAgIHJvYm90Lgo+ID4gQ2hhbmdlcyBpbiB2
ODoKPiA+ICAtIEFkZGVkIGFkZGl0aW9uYWwgZG9jdW1lbnRhdGlvbiBmb3IgbWlzc2luZyBwcm9w
ZXJ0aWVzIG9mICNzb3VuZC1kYWktY2VsbHMsCj4gPiAgICBpbnRlcnJ1cHQtcGFyZW50LCBhbmQg
d2FrZXVwLXNvdXJjZSBmb3IgbWZkIGRvY3VtZW50YXRpb24uCj4gPiAgLSBDb3JyZWN0ZWQgb3Jk
ZXIgb2YgZWxlbWVudHMgZGVzY3JpcHRpb25zIGluIGRldmljZSB0cmVlIGRvY3VtZW50YXRpb24u
Cj4gPiAgLSBDaGFuZ2VkIG5hbWUgb2YgIm1pYy1pbi1kaWZmZXJlbnRpYWwiIHRvICJyb2NrY2hp
cCxtaWMtaW4tZGlmZmVyZW50aWFsIi4KPiA+ICAtIENoYW5nZWQgbmFtZSBvZiBzb3VuZCBjYXJk
IGZyb20gInJvY2tjaGlwLHJrODE3LWNvZGVjIiB0byAiQW5hbG9nIi4KPiA+ICAtIFJlbW92ZWQg
dW51c2VkIHJlc2V0cyBhbmQgcmVzZXQtbmFtZXMgZnJvbSB0aGUgaTJzMV8yY2ggbm9kZS4KPiA+
IENoYW5nZXMgaW4gdjc6Cj4gPiAgLSBSZW1vdmVkIGlmZGVmIGFyb3VuZCByZWdpc3RlciBkZWZp
bml0aW9ucyBmb3IgTUZELgo+ID4gIC0gUmVwbGFjZWQgY29kZWMgZG9jdW1lbnRhdGlvbiB3aXRo
IHVwZGF0ZXMgdG8gTUZEIGRvY3VtZW50YXRpb24uCj4gPiAgLSBSZW9yZGVyZWQgZWxlbWVudHMg
aW4gZXhhbXBsZSB0byBjb21wbHkgd2l0aCB1cHN0cmVhbSBydWxlcy4KPiA+ICAtIEFkZGVkIGJp
bmRpbmcgdXBkYXRlIGJhY2sgZm9yIE9kcm9pZCBHbyBBZHZhbmNlIGFzIHJlcXVlc3RlZC4KPiA+
ICAtIFN1Ym1pdHRpbmcgcGF0Y2hlcyBmcm9tIGdtYWlsIG5vdy4KPiA+IENoYW5nZXMgaW4gdjY6
Cj4gPiAgLSBJbmNsdWRlZCBhZGRpdGlvbmFsIHByb2plY3QgbWFpbnRhaW5lcnMgZm9yIGNvcnJl
Y3Qgc3Vic3lzdGVtcy4KPiA+ICAtIFJlbW92ZWQgdW5uZWVkZWQgY29tcGF0aWJsZSBmcm9tIERU
IGRvY3VtZW50YXRpb24uCj4gPiAgLSBSZW1vdmVkIGJpbmRpbmcgdXBkYXRlIGZvciBPZHJvaWQg
R28gQWR2YW5jZSAod2lsbCBkbyBpbiBzZXBlcmF0ZSBzZXJpZXMpLgo+ID4gQ2hhbmdlcyBpbiB2
NToKPiA+ICAtIE1vdmUgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgZnJvbSByazgxN19jb2RlYy5oIHRv
IG1haW4gcms4MDguaCByZWdpc3Rlcgo+ID4gICAgZGVmaW5pdGlvbnMuCj4gPiAgLSBBZGQgdm9s
YXRpbGUgcmVnaXN0ZXIgZm9yIGNvZGVjIGJpdHMuCj4gPiAgLSBBZGQgZGVmYXVsdCB2YWx1ZXMg
Zm9yIGNvZGVjIGJpdHMuCj4gPiAgLSBSZW1vdmVkIG9mX2NvbXBhdGlibGUgZnJvbSBtdGQgZHJp
dmVyIChub3QgbmVjZXNzYXJ5KS4KPiA+ICAtIFN3aXRjaGVkIHRvIHVzaW5nIHBhcmVudCByZWdt
YXAgaW5zdGVhZCBvZiBwcml2YXRlIHJlZ21hcCBmb3IgY29kZWMuCj4gPiBDaGFuZ2VzIGluIHY0
Ogo+ID4gIC0gQ3JlYXRlZCBzZXRfcGxsKCkgY2FsbC4KPiA+ICAtIENyZWF0ZWQgdXNlciB2aXNp
YmxlIGdhaW4gY29udHJvbCBpbiBtaWMuCj4gPiAgLSBDaGVjayBmb3IgcmV0dXJuIHZhbHVlIG9m
IGNsa19wcmVwYXJlX2VuYWJsZSgpLgo+ID4gIC0gUmVtb3ZlZCBkdXBsaWNhdGUgY2xrX3ByZXBh
cmVfZW5hYmxlKCkuCj4gPiAgLSBTcGxpdCBEVCBkb2N1bWVudGF0aW9uIHRvIHNlcGFyYXRlIGNv
bW1pdC4KPiA+IENoYW5nZXMgaW4gdjM6Cj4gPiAgLSBVc2UgREFQTSBtYWNyb3MgdG8gc2V0IGF1
ZGlvIHBhdGguCj4gPiAgLSBVcGRhdGVkIGRldmljZXRyZWUgYmluZGluZyAoYXMgZXZlcnkgcms4
MTcgaGFzIHRoaXMgY29kZWMgY2hpcCkuCj4gPiAgLSBDaGFuZ2VkIGRvY3VtZW50YXRpb24gdG8g
eWFtbCBmb3JtYXQuCj4gPiAgLSBTcGxpdCBNRkQgY2hhbmdlcyB0byBzZXBhcmF0ZSBjb21taXQu
Cj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4gIC0gRml4ZWQgYXVkaW8gcGF0aCByZWdpc3RlcnMgdG8g
c29sdmUgc29tZSBidWdzLgo+ID4gCj4gPiAgZHJpdmVycy9tZmQvcms4MDguYyAgICAgICB8IDg1
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIGluY2x1ZGUvbGlu
dXgvbWZkL3JrODA4LmggfCA4MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNjYgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZmQvcms4MDguYyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKPiA+IGluZGV4
IGFkOTIzZGQ0ZTAwNy4uOTIzMTIwOTE4NGUwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZmQv
cms4MDguYwo+ID4gKysrIGIvZHJpdmVycy9tZmQvcms4MDguYwo+ID4gQEAgLTY1LDYgKzY1LDcg
QEAgc3RhdGljIGJvb2wgcms4MTdfaXNfdm9sYXRpbGVfcmVnKHN0cnVjdCBkZXZpY2UgKmRldiwg
dW5zaWduZWQgaW50IHJlZykKPiA+ICAJc3dpdGNoIChyZWcpIHsKPiA+ICAJY2FzZSBSSzgxN19T
RUNPTkRTX1JFRyAuLi4gUks4MTdfV0VFS1NfUkVHOgo+ID4gIAljYXNlIFJLODE3X1JUQ19TVEFU
VVNfUkVHOgo+ID4gKwljYXNlIFJLODE3X0NPREVDX0RUT1BfTFBUX1NSU1Q6Cj4gPiAgCWNhc2Ug
Uks4MTdfSU5UX1NUU19SRUcwOgo+ID4gIAljYXNlIFJLODE3X0lOVF9TVFNfUkVHMToKPiA+ICAJ
Y2FzZSBSSzgxN19JTlRfU1RTX1JFRzI6Cj4gPiBAQCAtMTYzLDYgKzE2NCwxMSBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IG1mZF9jZWxsIHJrODE3c1tdID0gewo+ID4gIAkJLm51bV9yZXNvdXJjZXMg
PSBBUlJBWV9TSVpFKHJrODE3X3J0Y19yZXNvdXJjZXMpLAo+ID4gIAkJLnJlc291cmNlcyA9ICZy
azgxN19ydGNfcmVzb3VyY2VzWzBdLAo+ID4gIAl9LAo+ID4gKyNpZmRlZiBDT05GSUdfU05EX1NP
Q19SSzgxNwo+ID4gKwl7Cj4gPiArCQkubmFtZSA9ICJyazgxNy1jb2RlYyIsCj4gPiArCX0sCj4g
PiArI2VuZGlmCj4gCj4gTm8gI2lmZXJ5IHBsZWFzZS4KPiAKPiBKdXN0IHJlcGxhY2UgaXQgd2l0
aCBhIGNvbW1lbnQuCj4gCj4gSWYgbm8gYXNzb2NpYXRlZCBkcml2ZXIgZXhpc3RzLCBpdCBqdXN0
IHdvbid0IG1hdGNoL2JpbmQuCgpJIGRpZCB0aGUgImlmIiBoZXJlIGJlY2F1c2UgSSBub3RpY2Vk
IHRoYXQgaWYgSSBoYXZlIGEgcms4MTcgYW5kIGRvIG5vdAp1dGlsaXplIHRoZSBjb2RlYyBJIHJl
Y2VpdmUgYSBkbWVzZyB3YXJuaW5nLiBJIHB1dCB0aGUgaWYgaGVyZSB0byBzaWxlbmNlCml0IGlu
IHRoZSBldmVudCB0aGF0IHNvbWVvbmUgd2FzIHVzaW5nIHRoaXMgUE1JQyBidXQgZGlkbid0IHdh
bnQgdG8gdXNlCnRoZSBhdWRpbyBjb2RlYy4gSSB3aWxsIG1ha2UgdGhlIGNoYW5nZSBpZiB5b3Ug
c2F5IHNvIHRob3VnaCwgYnV0IEkganVzdAp3YW50IHRvIGNvbmZpcm0gdGhhdCBpdCdzIGFjY2Vw
dGFibGUgdG8gaGF2ZSBhIHdhcm5pbmcgZm9yIGFsbCByazgxN3MKdGhhdCBkbyBub3QgdXNlIHRo
ZSBjb2RlYyBhYm91dCBhIG1pc3NpbmcgY29kZWMuICBUaGUgaGFyZHdhcmUgaXMgYWx3YXlzCnBy
ZXNlbnQsIEkganVzdCBjYW4ndCBzYXkgZm9yIGNlcnRhaW4gaXQgd2lsbCBhbHdheXMgYmUgdXNl
ZC4KClRoYW5rIHlvdS4KCj4gCj4gLS0gCj4gTGVlIEpvbmVzIFvmnY7nkLzmlq9dCj4gU2VuaW9y
IFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCj4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCj4gRm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
