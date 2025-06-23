Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 164D4C7EE39
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 13:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MyytYqGt4Z8QZO9/qZCmP45AuejFij97123kSRhbfhs=; b=B7RFdKNN2x7UzP
	l5EXjbU28lHUJ2ru3Spv+b9s/meJbGSwXXbkj6VpcV5GPIanq4T5Dg1chucER418rgC1W2H1blxFi
	NjEA5mCit3/7BkCP+pnM0lQktlK/biptPythQBbvsvuRWLNzud/pe65OKiPBVDhncpeFWYymbPdDb
	SuuozmYPzUFb35V9n9JHTJHRa2aytwOXZBkAoWl0jekyiyG0TmMLPO8uMcYdG1a9M2wqRMvYxUI6O
	8ExDI7RVKnUEy3QiWkros0DVXJDbET2aXBJ/xzqb1nDaciAc5u+jqr4EKM5j4zkDuofplph1SWbQE
	AB2DNfvyEHpmsqLzpaFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTh34-00000002qJw-3WhE;
	Mon, 23 Jun 2025 13:17:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfbn-00000002Xgo-3UmD;
	Mon, 23 Jun 2025 11:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=JUxN5m7hXm2b0M+zJP/i0W46Be3d9ie1H1mdsQ0bmnA=; b=c3aZp8Wz4uFpoBo/3ygSM87t8E
	HTz4fmuQNy+CKIYstKxuRYqwosHeGwvV7wCsK9UQVeS1swWKSOh2PcJaj2mC/0OLXzWkTVOUnqxVJ
	5mEZI/XfuW5MQc3a7p/PEqrb6k3zgNFQhfFVqdAt0b96i3GRWEKoFUH/w+3uhpEYw0L7f8LYmuS8u
	2Or6Jdn7O6TxuczRWjEHmGcbh78vgFMbLQvggdt0Ty3XpR/49BgBlETFpBewhtU6wgzucYrzoyPg9
	GzYTQy5hnFo1648fADqd+WpzEnHirPC8FL8ekxN3UpJ2dDy4DH3pHI6k6BvRLoesBjepJli4Wz+1p
	etK8zX2g==;
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfbk-00000005Chf-1Ikc;
	Mon, 23 Jun 2025 11:45:06 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-748e81d37a7so2431280b3a.1;
        Mon, 23 Jun 2025 04:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750679101; x=1751283901; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JUxN5m7hXm2b0M+zJP/i0W46Be3d9ie1H1mdsQ0bmnA=;
        b=JiR3YyeZWMCFzxQabT1GAhSq13RkZkGgfO6TVFKo2t53k8MKbOjlN/2Ow8/koD9mX8
         ttG/l7BaFwHgmFmMUGiKaqPPbrmmjg/ypFy+FEeQitLcgegr9/du4MpuJw3ATiO8NwtO
         uEG5hXyKD9x8oWzI/hM2uTWG1UqZCK66ZSrYKEFwfwgPWtq856yGu9H6BxX1HJh0ETIZ
         N0euJzzT6PHfwrROgSPTfmOJQFvKaGTcImeTr0hefdx2sxOzqJql5e1ACp4Y+uBHqML8
         Z/2XdBTXqI8cvn9w5sH2X4qOepNpglKNUYvTDmWg915kcAoYh29QnqAaz3YVXvoIjhXp
         pS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750679101; x=1751283901;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JUxN5m7hXm2b0M+zJP/i0W46Be3d9ie1H1mdsQ0bmnA=;
        b=u+rPdRXFkofMkgV1y6hPTHNHWRiiDoCmosfbwalqBsgnMYf3HeD7TQ7aX0VQ8ADiJR
         9Ic4QNWEPg9z47QzW3BgEXmZuv8mJTLrHOllopZ6f/aUlDx2H91Lev4PbobnmNrqBSli
         E6F6FBgkCykdoERURTFHZLbN3P2WiaBvRL2xYC4nlB5841WL7ueaToGQRO/YG6wzweN9
         SqlFxiCoAop9YxA/QlZ0mGxyC5UwRrcFVntMUD/ZNwASUgaxiHDe2jss6iSqAxW0DYc9
         VeH9VYSW3EdvNocDK/um8HXJQG+Jp/vhM+KfMLBwlEwKydsGPEBXVJKRwVDdaBVjS38R
         wHqw==
X-Forwarded-Encrypted: i=1; AJvYcCUDD9a9NYA1pTGZ9J90jhOzBZjy6lvBHb0Q3ybvjqCZGtNsaev7dNCL+nXRY3uKwaYdB6SxUQrHhCkmqs8IJSLZ@lists.infradead.org
X-Gm-Message-State: AOJu0YyFhNIl4IpAnsZzubzVJ9v8DCmqs4qhblULzQOJtQgh7U31TKqS
	eBarU8rmJzKnR703W4TtW3oGFYoSpP8uOaBfw7AiaZJq5IAx1Ebq6T6D
X-Gm-Gg: ASbGncsCbubTrKV+S8AIiciR+eBH/J7G44Ed07uHy6BsNK8CZYfHshth5YrVWWS/108
	aECMTyOpj4nWKRf874PqJMf08O57h0kNGiHe6xyfW999qUgRkYMGvd5JXxaBJm1CC7vFkxa/SqS
	6qO5zgJTd6htcfc00f3soDMvtOlg8UP2jYzvMemLWScdl3ygDXNzsmVhFeehS4DCmFlByXtrMVd
	JTbYXu00X/vr2QzVjnoC2CzW9MvO8YA3iMRf6e9wJFcLZcT00hDT4tspFLO7tvYh/DY3K9qo+Zr
	45NzXqL5amqp5EqCJjTXxthrLnZbaZzZ3HQTDgXTlOB1VQuwAg==
X-Google-Smtp-Source: AGHT+IFbrASD277xcSwNBKzxe63luwLbeNcRlZ7w2jxYC/RzfHfwxJaDm5lxfkKKJa088I1hyWqEkA==
X-Received: by 2002:a05:6a20:144f:b0:1f5:97c3:41b9 with SMTP id adf61e73a8af0-22026e6113amr16803387637.5.1750679101260;
        Mon, 23 Jun 2025 04:45:01 -0700 (PDT)
Received: from geday ([2804:7f2:800b:ea8e::dead:c001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a64d289sm8207591b3a.132.2025.06.23.04.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 04:45:00 -0700 (PDT)
Date: Mon, 23 Jun 2025 08:44:49 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v3 2/3] PCI: rockchip-host: Retry link training on
 failure without PERST#
Message-ID: <aFk-MeIWFcBiGBPr@geday>
References: <cover.1749582046.git.geraldogabriel@gmail.com>
 <b7c09279b4a7dbdba92543db9b9af169776bd90c.1749582046.git.geraldogabriel@gmail.com>
 <zuiq3b2rsixymtjr3xzrb26clikvlja62wgj65umnse4kuk75c@x5qan73ispxe>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <zuiq3b2rsixymtjr3xzrb26clikvlja62wgj65umnse4kuk75c@x5qan73ispxe>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_124504_506891_C91FD681 
X-CRM114-Status: GOOD (  39.82  )
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

T24gTW9uLCBKdW4gMjMsIDIwMjUgYXQgMDU6Mjk6NDZBTSAtMDYwMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDEwLCAyMDI1IGF0IDA0OjA1OjQwUE0gLTAzMDAs
IEdlcmFsZG8gTmFzY2ltZW50byB3cm90ZToKPiA+IEFmdGVyIGFsbW9zdCAzMCBkYXlzIG9mIGJh
dHRsaW5nIHdpdGggUkszMzk5IGJ1Z2d5IFBDSWUgb24gbXkgUm9jayBQaQo+ID4gTjEwIHRocm91
Z2ggdHJpYWwtYW5kLWVycm9yIGRlYnVnZ2luZywgSSBmaW5hbGx5IGdvdCBwb3NpdGl2ZSByZXN1
bHRzCj4gPiB3aXRoIGVudW1lcmF0aW9uIG9uIHRoZSBQQ0kgYnVzIGZvciBib3RoIGEgUmVhbHRl
ayA4MTExRSBOSUMgYW5kIGEKPiA+IFNhbXN1bmcgUE05ODFhIFNTRC4KPiA+IAo+ID4gVGhlIE5J
QyB3YXMgY29ubmVjdGVkIHRvIGEgTS4yLT5QQ0llIHg0IHJpc2VyIGNhcmQgYW5kIGl0IHdvdWxk
IGdldAo+ID4gc3R1Y2sgb24gUG9sbGluZy5Db21wbGlhbmNlLCB3aXRob3V0IGJyZWFraW5nIGVs
ZWN0cmljYWwgaWRsZSBvbiB0aGUKPiA+IEhvc3QgUlggc2lkZS4gVGhlIFNhbXN1bmcgUE05ODFh
IFNTRCBpcyBkaXJlY3RseSBjb25uZWN0ZWQgdG8gTS4yCj4gPiBjb25uZWN0b3IgYW5kIHRoYXQg
U1NEIGlzIGtub3duIHRvIGJlIHF1aXJreSAoT0VNLi4uIG5vIHN1cHBvcnQpCj4gPiBhbmQgbm9u
LWZ1bmN0aW9uYWwgb24gdGhlIFJLMzM5OSBwbGF0Zm9ybS4KPiA+IAo+ID4gVGhlIFNhbXN1bmcg
U1NEIHdhcyBldmVuIHdvcnNlIHRoYW4gdGhlIE5JQyAtIGl0IHdvdWxkIGdldCBzdHVjayBvbgo+
ID4gRGV0ZWN0LkFjdGl2ZSBsaWtlIGEgYnJpY2tlZCBjYXJkLCBldmVuIHRob3VnaCBpdCB3YXMg
ZnVsbHkgZnVuY3Rpb25hbAo+ID4gdmlhIFVTQiBhZGFwdGVyLgo+ID4gCj4gPiBJdCBzZWVtcyBi
b3RoIGRldmljZXMgYmVuZWZpdCBmcm9tIHJldHJ5aW5nIExpbmsgVHJhaW5pbmcgaWYgLSBiaWcg
aWYKPiA+IGhlcmUgLSBQRVJTVCMgaXMgbm90IHRvZ2dsZWQgZHVyaW5nIHJldHJ5Lgo+ID4gCj4g
PiBGb3IgcmV0cnkgdG8gd29yaywgZmxvdyBtdXN0IGJlIGV4YWN0bHkgYXMgaGFuZGxlZCBieSBw
cmVzZW50IHBhdGNoLAo+ID4gdGhhdCBpcywgd2UgbXVzdCBjdXQgcG93ZXIsIGRpc2FibGUgdGhl
IGNsb2NrcywgdGhlbiByZS1lbmFibGUKPiA+IGJvdGggY2xvY2tzIGFuZCBwb3dlciByZWd1bGF0
b3JzIGFuZCBnbyB0aHJvdWdoIGluaXRpYWxpemF0aW9uCj4gPiB3aXRob3V0IHRvdWNoaW5nIFBF
UlNUIy4gVGhlbiBxdWlya3kgZGV2aWNlcyBhcmUgYWJsZSB0byBzdWNlc3NmdWxseQo+ID4gZW51
bWVyYXRlLgo+ID4gCj4gCj4gVGhpcyBzb3VuZHMgd2VpcmQuIFBFUlNUIyBpcyBqdXN0IGFuIGlu
ZGljYXRpb24gdG8gdGhlIGRldmljZSB0aGF0IHRoZSBwb3dlciBhbmQKPiByZWZjbGsgYXJlIGFw
cGxpZWQgb3IgZ29pbmcgdG8gYmUgcmVtb3ZlZC4gVGhlIGRldmljZXMgdXNlcyBQRVJTVCMgdG8g
cHJlcGFyZQo+IGZvciB0aGUgcG93ZXIgcmVtb3ZhbCBkdXJpbmcgYXNzZXJ0IGFuZCBzdGFydCBm
dW5jdGlvbmluZyBhZnRlciBkZWFzc2VydC4KCkhpIE1hbmkhIFRoYW5rIHlvdSBmb3IgbG9va2lu
ZyBpbnRvIHRoaXMuCgpZZWFoLCB0ZWxsIG1lIGFib3V0IGl0LCBpdCBpcyBiZXlvbmQgd2VpcmQu
IEkgcG9zdGVkIFJGQyBQYXRjaCBpbiB0aGUKaG9wZXMgc29tZW9uZSB3aXRoIGFjY2VzcyB0byBQ
Q0llIEFuYWx5emVyIGNvdWxkIGhhdmUgZGVlcGVyIGxvb2sKYXQgd2hhdCB0aGUgaGVjayBpcyBn
b2luZyBvbiBoZXJlIC0gYmVjYXVzZSBpdCBkb2VzIHdvcmssIGJ1dCBJIGRvbid0CmNsYWltIHRv
IHVuZGVyc3RhbmQgaG93LgoKPiAKPiBJdCBsb29rcyBsaWtlIHRoZSBQRVJTVCMgcG9sYXJpdHkg
aXMgaW52ZXJ0ZWQgaW4geW91ciBjYXNlLiBDb3VsZCB5b3UgcGxlYXNlCj4gY2hhbmdlIHRoZSAn
ZXAtZ3Bpb3MnIHBvbGFyaXR5IHRvIEdQSU9fQUNUSVZFX0xPVyBhbmQgc2VlIGlmIGl0IGZpeGVz
IHRoZSBpc3N1ZQo+IHdpdGhvdXQgdGhpcyBwYXRjaD8KPiAKPiBJZiB0aGF0IGRpZG4ndCB3b3Jr
LCBjb3VsZCB5b3UgcGxlYXNlIGRyb3AgdGhlICdlcC1ncGlvcycgcHJvcGVydHkgYW5kIGNoZWNr
PwoKU29ycnkgdG8gZGVjbGluZSB5b3VyIHJlcXVlc3QsIGJ1dCBJIGFzc3VyZSB5b3UgSSBoYXZl
IHRyaWVkIG1hbnkKb3RoZXIgY29tYmluYXRpb25zIGJlZm9yZSByZWFjaGluZyBwcmVzZW50IHBh
dGNoLCBpbmNsdWRpbmcgeW91cgpzdWdnZXN0aW9uLiBJdCB3aWxsIGRvIG5vdGhpbmcuIEl0IHdv
bid0IHdvcmssIHdvbid0IG1ha2UgU1NEIHRoYXQKcmVmdXNlIHRvIHdvcmsgd2l0aCBSSzMzOTks
IHdvcmtpbmcuIE5vdGUgdGhhdCB0aGlzIGlzbid0IHNwZWNpZmljCnRvIG15IGJvYXJkIC0gUksz
Mzk5IGlzIGluZmFtb3VzIGZvciBiZWluZyBwaWNreSBhYm91dCBkZXZpY2VzLgoKPiAKPiA+IE5v
IGZ1bmN0aW9uYWwgY2hhbmdlIGludGVuZGVkIGZvciBhbHJlYWR5IHdvcmtpbmcgZGV2aWNlcy4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogR2VyYWxkbyBOYXNjaW1lbnRvIDxnZXJhbGRvZ2Ficmll
bEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtaG9zdC5jIHwgNDcgKysrKysrKysrKysrKysrKysrLS0tCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDQwIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYwo+ID4gaW5kZXggMmExMDcxY2QzMjQx
Li42N2IzYjM3OWQyNzcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aWUtcm9ja2NoaXAtaG9zdC5jCj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtaG9zdC5jCj4gPiBAQCAtMzM4LDExICszMzgsMTQgQEAgc3RhdGljIGludCByb2Nr
Y2hpcF9wY2llX3NldF92cGNpZShzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gPiAg
c3RhdGljIGludCByb2NrY2hpcF9wY2llX2hvc3RfaW5pdF9wb3J0KHN0cnVjdCByb2NrY2hpcF9w
Y2llICpyb2NrY2hpcCkKPiA+ICB7Cj4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9IHJvY2tjaGlw
LT5kZXY7Cj4gPiAtCWludCBlcnIsIGkgPSBNQVhfTEFORV9OVU07Cj4gPiArCWludCBlcnIsIGkg
PSBNQVhfTEFORV9OVU0sIGlzX3JlaW5pdCA9IDA7Cj4gPiAgCXUzMiBzdGF0dXM7Cj4gPiAgCj4g
PiAtCWdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChyb2NrY2hpcC0+cGVyc3RfZ3BpbywgMCk7Cj4g
PiArCWlmICghaXNfcmVpbml0KSB7Cj4gPiArCQlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocm9j
a2NoaXAtPnBlcnN0X2dwaW8sIDApOwo+ID4gKwl9Cj4gPiAgCj4gPiArcmVpbml0Ogo+IAo+IFNv
IHRoaXMgcmVpbml0IHBhcnQgb25seSBza2lwcyB0aGUgUEVSU1QjIGFzc2VydCwgYnV0IGNhbGxz
Cj4gcm9ja2NoaXBfcGNpZV9pbml0X3BvcnQoKSB3aGljaCByZXNldHMgdGhlIFJvb3QgUG9ydCBp
bmNsdWRpbmcgUEhZLiBJIGRvbid0Cj4gdGhpbmsgaXQgaXMgc2FmZSB0byBkbyBpdCBpZiBQRVJT
VCMgaXMgd2lyZWQuCgpJIGRvbid0IHVuZGVyc3RhbmQsIGNvdWxkIHlvdSBiZSBhIGJpdCBtb3Jl
IHZlcmJvc2Ugb24gd2h5IGRvIHlvdQp0aGluayB0aGlzIGlzIGRhbmdlcm91cz8KClRoYW5rcywK
R2VyYWxkbyBOYXNjaW1lbnRvCgo+IAo+IC0gTWFuaQo+IAo+IC0tIAo+IOCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
