Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5E82C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 15:42:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A19E6101E
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 15:42:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9A19E6101E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWZAko331GQD+8qfxo/EK94U9Rp0y8cU2USlZELcQYo=; b=AWZmOFuOvqBnIY
	0XQsU9lRLnyd/8K6Glh2mV7AGZ0IMeWYSOA1JKZc+A3pJQkjRojoaH/rCypUV76TKnKuMA9lHa0H6
	5in0K/oCtMODi7Bs8FQSHFI1PIssCzKPN3a02SwK2U+YLkicK30ByorJ7ekF8fWZR7HMjWKwlL1Ig
	XmJQJCUy+buUBIeZK+bU14tIF4lfc0f/o9xj9EAPYsJ/ale3e4dby7Y3YNgEY4+2/lL6UQOVGkYl2
	01Ch+smDxcEsuexB7J7V1TT+eg9dVUtxboMDqmoNC9zh355TfdNKawK2jw5ptyoPHCiExJ4B/Jrcq
	md59HqyFb//4yGfjZ3vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYs0e-003Gxk-Bk; Fri, 08 Oct 2021 15:42:08 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYs0c-003GvV-2f
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 15:42:07 +0000
Received: by mail-qv1-xf32.google.com with SMTP id k3so6598161qve.10
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Oct 2021 08:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=rjs4mCGafYlXNdybb9ZGxlAk2gqqUMvwHU2DzJJHvqI=;
 b=7hgF0Eq+zGYzt7/FS7OTsVJovpU37Wp0bpbTmPwuIhctC10L3AQ1I+TLhrRYa2HzI6
 wGOBbx4x+92vcDIM5BUHEI7xTaaSL+gKuUXnFwW1YdC8+iV0maARKJFNVOvctPEgX9fN
 D9aM4rEiFi6glR1z2u7bGKV+/dd1QVJ+qhRUcesiCwPF7ArKtNX4FZCiu8kdkiMvpqtJ
 IaRE2+pT31G3AZG/bw1QOUFapj6GeolHcSX21KlLmNSh/m6Kw5NaVFwnJvULRJkcUw7M
 DTAitj3SenGQeuIKVivF6cVlBuKi3EC4zjf/dV2R0TCsTVfcVaEOh9NcZPvkz4bcRaq3
 +ZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=rjs4mCGafYlXNdybb9ZGxlAk2gqqUMvwHU2DzJJHvqI=;
 b=rRXjI3JdZiDz4NxV0Yp/EobKeMr7HY4TxCkCHKqbUXZwT7KdUmdIffJRp/PUakLTLY
 5wf3s+L7q/e7EDA4KMkxe9yncSUKVG3j2ztL6XD87eBGSylmbJMt6n08g/A6ED8/EGY1
 nBRXAvuZVo5SHe2cJxaih07sL98M0ivM4kweVdPfOsstXx9iMsoR95SSAwlEsbhssy+V
 HSNrKdHUXmVDTXL5QnFfRU4CZ2UvE/b8W8R1++kJkcaWUi3pk2Ktk0aAXWdiZc/MwmjE
 m0Vk5+AheUZhnzemTRqB6Sv4HCAID5CYsuU95hOZgNskEZFPv+vIO9LjzT0GNvVynmUu
 gQkA==
X-Gm-Message-State: AOAM5319tTvh7JtilKg+gJ9iwr8JyE6Jvw17cqU0ebcXAVVUvtAxAyRu
 YWVJT0i/ZipKELQXk8MdAGKEZg==
X-Google-Smtp-Source: ABdhPJztze8fJcBoJDAyfAaXu2xI3rtosIxtZNyE1oYjwGkcC0IZe06b8/R0c5Q21brKykmtBw4TKg==
X-Received: by 2002:a05:6214:118f:: with SMTP id
 t15mr8761837qvv.28.1633707723890; 
 Fri, 08 Oct 2021 08:42:03 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id 6sm2265371qkc.123.2021.10.08.08.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Oct 2021 08:42:03 -0700 (PDT)
Message-ID: <f108f23dadc846222c63c88af826dae9c5082d83.camel@ndufresne.ca>
Subject: Re: [PATCH 0/2] media: rkvdec: Align decoder behavior with Hantro
 and Cedrus
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Chen-Yu Tsai <wenst@chromium.org>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>
Date: Fri, 08 Oct 2021 11:42:01 -0400
In-Reply-To: <20211008100423.739462-1-wenst@chromium.org>
References: <20211008100423.739462-1-wenst@chromium.org>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_084206_143569_072C83C9 
X-CRM114-Status: GOOD (  23.21  )
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

SGkgQ2hlbi1ZdSwKCnRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMuCgpMZSB2ZW5kcmVkaSAw
OCBvY3RvYnJlIDIwMjEgw6AgMTg6MDQgKzA4MDAsIENoZW4tWXUgVHNhaSBhIMOpY3JpdMKgOgo+
IEhpIGV2ZXJ5b25lLAo+IAo+IFdoaWxlIHdvcmtpbmcgb24gdGhlIHJrdmRlYyBILjI2NCBkZWNv
ZGVyIGZvciBDaHJvbWVPUywgSSBub3RpY2VkIHNvbWUKPiBiZWhhdmlvcmFsIGRpZmZlcmVuY2Vz
IGNvbXBhcmVkIHRvIEhhbnRybyBhbmQgQ2VkcnVzOgo+IAo+IDEuIFRoZSBkcml2ZXIgYWx3YXlz
IG92ZXJyaWRlcyB0aGUgc2l6ZWltYWdlIHNldHRpbmcgZ2l2ZW4gYnkgdXNlcnNwYWNlCj4gICAg
Zm9yIHRoZSBvdXRwdXQgZm9ybWF0LiBUaGlzIHJlc3VsdHMgaW4gaW5zdWZmaWNpZW50IGJ1ZmZl
ciBzcGFjZSB3aGVuCj4gICAgcnVubmluZyB0aGUgQ2hyb21lT1MgdmlkZW9fZGVjb2RlX2FjY2Vs
ZXJhdG9yX3Rlc3RzIHRlc3QgcHJvZ3JhbSwKPiAgICBsaWtlbHkgZHVlIHRvIGEgc21hbGwgaW5p
dGlhbCByZXNvbHV0aW9uIGZvbGxvd2VkIGJ5IGR5bmFtaWMKPiAgICByZXNvbHV0aW9uIGNoYW5n
ZS4KPiAKPiAyLiBEb2Vzbid0IHN1cHBvcnQgZHluYW1pYyByZXNvbHV0aW9uIGNoYW5nZS4KPiAK
PiBUaGlzIHNtYWxsIHNlcmllcyBmaXhlcyBib3RoIGFuZCBhbGlnbnMgdGhlIGJlaGF2aW9yIHdp
dGggdGhlIG90aGVyIHR3bwo+IHN0YXRlbGVzcyBkZWNvZGVyIGRyaXZlcnMuIFRoaXMgd2FzIHRl
c3RlZCBvbiB0aGUgZG93bnN0cmVhbSBDaHJvbWVPUwo+IDUuMTAga2VybmVsIHdpdGggQ2hyb21l
T1MuIEFsc28gY29tcGlsZWQgdGVzdGVkIG9uIG1haW5saW5lIGJ1dCBJIGRvbid0Cj4gaGF2ZSBh
bnkgb3RoZXIgUkszMzk5IGRldmljZXMgc2V0IHVwIHRvIHRlc3QgdmlkZW8gc3R1ZmYsIHNvIHRl
c3RpbmcKPiB3b3VsZCBiZSB2ZXJ5IG11Y2ggYXBwcmVjaWF0ZWQuCj4gCj4gQWxzbywgSSdtIG5v
dCBzdXJlIGlmIHVzZXIgYXBwbGljYXRpb25zIGFyZSByZXF1aXJlZCB0byBjaGVjayB0aGUgdmFs
dWUKPiBvZiBzaXplaW1hZ2UgdXBvbiBTX0ZNVCByZXR1cm4uIElmIHRoZSB2YWx1ZSBpcyBkaWZm
ZXJlbnQgb3IgdG9vIHNtYWxsLAo+IHdoYXQgY2FuIHRoZSBhcHBsaWNhdGlvbiBkbyBiZXNpZGVz
IGZhaWw/IEFGQUlDVCBpdCBjYW4ndCBzcGxpdCB0aGUKPiBkYXRhIG9mIG9uZSBmcmFtZSAob3Ig
c2xpY2UpIGJldHdlZW4gZGlmZmVyZW50IGJ1ZmZlcnMuCgpXaGlsZSBtb3N0IHNvZnR3YXJlIG91
dCB0aGVyZSBqdXN0IGFzc3VtZXMgdGhhdCBkcml2ZXIgd2lsbCBkbyBpdCByaWdodCBhbmQKY3Jh
c2ggd2hlbiBpdCdzIG5vdCB0aGUgY2FzZSwgYXBwbGljYXRpb24gdGhhdCBkbyBtYXAgdGhlIGJ1
ZmZlciB0byBDUFUgbXVzdApyZWFkIGJhY2sgdGhlIGZtdCBzdHJ1Y3R1cmUgYXMgdGhlIGRyaXZl
cnMgYXJlIGFsbCBmYWlsLXNhZmUgYW5kIHdpbGwgbW9kaWZ5CnRoYXQgc3RydWN0dXJlIHRvIGEg
c2V0IG9mIHZhbGlkIHZhbHVlIHMgZm9yIHRoZSBjb250ZXh0LgoKQXMgZm9yIG9wcG9zaXRlIGRp
cmVjdGlvbiAob3V0cHV0IHZzIGNhcHR1cmUpIGZvcm1hdCBiZWluZyBjaGFuZ2VkLCB0aGlzIHNo
b3VsZApiZSBkb2N1bWVudGVkIGluIHRoZSBzcGVjLCBpZiB5b3UgZmluZCBpdCB0b28gdW5jbGVh
ciBvciBtaXNzaW5nIGZvciBzYXRlbGVzcwpjb2RlYyAoSSBrbm93IGl0J3MgdGhlcmUgZm9yIHN0
YXRlZnVsIGJ1dCBjYW4ndCByZW1lbWJlciwgd291bGQgaGF2ZSB0byByZS1yZWFkLApmb3Igc3Rh
dGVsZXNzKSBsZXQgdXMga25vdy4KCnJlZ2FyZHMsCk5pY29sYXMKCj4gCj4gQW5kcnplaiwgSSBi
ZWxpZXZlIHRoZSBzZWNvbmQgcGF0Y2ggd291bGQgY29uZmxpY3Qgd2l0aCB5b3VyIFZQOSBzZXJp
ZXMuCj4gCj4gCj4gUmVnYXJkcwo+IENoZW5ZdQo+IAo+IENoZW4tWXUgVHNhaSAoMik6Cj4gICBt
ZWRpYTogcmt2ZGVjOiBEbyBub3Qgb3ZlcnJpZGUgc2l6ZWltYWdlIGZvciBvdXRwdXQgZm9ybWF0
Cj4gICBtZWRpYTogcmt2ZGVjOiBTdXBwb3J0IGR5bmFtaWMgcmVzb2x1dGlvbiBjaGFuZ2VzCj4g
Cj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyB8ICA1ICstLQo+
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jICAgICAgfCA0MCArKysrKysr
KysrKy0tLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjIg
ZGVsZXRpb25zKC0pCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
