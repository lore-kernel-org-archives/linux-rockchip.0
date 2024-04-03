Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EACFCD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 09:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=woQp2o5vAP/aPr0/xUKJhDIHmd2yOx88yqH7tdXHehM=; b=ORGGFi7qIhN0QI
	01/h2mOroOvXtHdNy1QWULdwzWvv/ygXqiAn4pYuwUVX4DSG/F7CfjJyozpbVnhoIiZt4vd0JuHRS
	3ntslXRHWrt/UKtvHxniumtfvzxXn5XVlI57Oj1Y288nqHltAx+tE+cTyqSmZ3VBL6zNjWoFNeo6U
	snm2QgJIxBuYCzCKaj51O4/j6DloITfAlpUUrujQSDaOU1IhCfa5rwaj0ZGgIAkSZvt7dDG9sTewn
	vTpXmHTtyotsq9jNrQNbmoB998mtMCx9Om/uxpMtdwSidpkIHoJDSOxo0TrklN1lNKLjpHl+rPl4g
	tLd1o/NB9I0v3UFgwQtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrws6-0000000FCfM-1rNd;
	Wed, 03 Apr 2024 09:25:30 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrws3-0000000FCco-0PEN
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 09:25:28 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-221e6bf537dso3996293fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 02:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712136325; x=1712741125; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rpFhM8SqXyBu94hYk7CEfVvlLlSK54Yy6BQDmzkvVHs=;
        b=GgtxLkVPDWlkVYH9QvLLKNWqBruDm/SDahCcZHArRqzjHOC2fHQrEBgR3S9rnMMCiQ
         eLD91V+bFirF70+NG5AfeOMsSAPwM8LSYOdXa3m5NoR6d3+A/se8pDT4SJh1VIYKeBaz
         IOX1MDwvEoLMA9N0bEHW3vo4ljKxc6yd5GO6DBAsXiPECpuIHa2ppHYoAeY5xEF6z0jl
         mUAtfQ6ZpHQy1VkpZg76lOksiuK18lSvV6hJXdbA7GyngVhTFihc8YlK5X1s06+vp56/
         gO7cZV7sgLWj4HBXoQNX3lE5k+8HOy2FZPMRNtGsbrF9T3El1egc/Ccal3FKK+x49kE8
         9N9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712136325; x=1712741125;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rpFhM8SqXyBu94hYk7CEfVvlLlSK54Yy6BQDmzkvVHs=;
        b=KcFYVR6rqU7VCQYARqNFP6cVisH0iKQWbSPw9FpbQcK21obJxJLw837Gwo7ZwuxkPi
         hxqvHGbVqb/0hrWSxuMMaH8mdWraltUJoOtoaR3oCO49GKoR4NqPYX9/z0sEVvtGk9D5
         1OfoSnhnTRgJyWjtAtS7TBnEnoEcBo+FLG4JCd5J9wmLQzuJSVa3SJri4fRxQtpZgEvB
         TrZRPsMtnZYklRGseTGSmuPjN4k/iw0eVT7aR18ThaX3oEpQx3W0xGypp16eD5KG3+M3
         lYC1f6XCBW00StwIfH1M/qpNL3KsuKS3psw9B+e1nQigB1pEaITH7E9zWKEMH2MQZKa8
         QJvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHtPDTIEOpL7wrZBS6Bu0pSQ6Gh4Fkfw32ytj4IuBJdkp1KTOSfCbeHgwyezJWqURymEJZOE2EQUTTrILihD0NxwgCvBRt/oNWrg+mdT/fbHt9
X-Gm-Message-State: AOJu0YwUd8BSXfr5LpcHlPa6Px2w7zUkxP5I6WlqU3nJl/RYwVfYFwZV
	EcL7y0obBLvwqyF8xdfb2bH4f+s+ZAyB9yvzhXw47EaDR5V8eec/1DnT0qZJZg==
X-Google-Smtp-Source: AGHT+IFACkuRVnBA2XXRimm7ghfL1FGbrX9cbZUJ2UEvfTWLcQUIWAhUSwegdo/x91KpBnylAMFTpQ==
X-Received: by 2002:a05:6870:e6c8:b0:22a:4c6a:39ea with SMTP id s8-20020a056870e6c800b0022a4c6a39eamr2423701oak.14.1712136324914;
        Wed, 03 Apr 2024 02:25:24 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id k8-20020aa78208000000b006eaad01817esm11345067pfi.105.2024.04.03.02.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 02:25:24 -0700 (PDT)
Date: Wed, 3 Apr 2024 14:55:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 00/18] Improve PCI memory mapping API
Message-ID: <20240403092517.GH25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240403075034.GF25309@thinkpad>
 <2cdc7045-e277-4d1f-ad7c-66e4ac819a41@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2cdc7045-e277-4d1f-ad7c-66e4ac819a41@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_022527_194885_A06477E4 
X-CRM114-Status: GOOD (  28.77  )
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

T24gV2VkLCBBcHIgMDMsIDIwMjQgYXQgMDQ6NTg6NDJQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gNC8zLzI0IDE2OjUwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4g
PiBPbiBTYXQsIE1hciAzMCwgMjAyNCBhdCAwMToxOToxMFBNICswOTAwLCBEYW1pZW4gTGUgTW9h
bCB3cm90ZToKPiA+PiBUaGlzIHNlcmllcyBpbnRyb2R1Y2VzIHRoZSBuZXcgZnVuY3Rpb25zIHBj
aV9lcGNfbWFwX2FsaWduKCksCj4gPj4gcGNpX2VwY19tZW1fbWFwKCkgYW5kIHBjaV9lcGNfbWVt
X3VubWFwKCkgdG8gaW1wcm92ZSBoYW5kbGluZyBvZiB0aGUKPiA+PiBQQ0kgYWRkcmVzcyBtYXBw
aW5nIGFsaWdubWVudCBjb25zdHJhaW50cyBvZiBlbmRwb2ludCBjb250cm9sbGVycyBpbiBhCj4g
Pj4gY29udHJvbGxlciBpbmRlcGVuZGVudCBtYW5uZXIuCj4gPj4KPiA+PiBUaGUgaXNzdWUgZml4
ZWQgaXMgdGhhdCB0aGUgZml4ZWQgYWxpZ25tZW50IGRlZmluZWQgYnkgdGhlICJhbGlnbiIgZmll
bGQKPiA+PiBvZiBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyBhc3N1bWVzIHRoYXQgdGhlIGFsaWdu
bWVudCBvZiB0aGUgZW5kcG9pbnQKPiA+PiBtZW1vcnkgdXNlZCB0byBtYXAgYSBSQyBQQ0kgYWRk
cmVzcyByYW5nZSBpcyBpbmRlcGVuZGVudCBvZiB0aGUgUENJCj4gPj4gYWRkcmVzcyBiZWluZyBt
YXBwZWQuIEJ1dCB0aGF0IGlzIG5vdCB0aGUgY2FzZSBmb3IgdGhlIHJrMzM5OSBTb0MKPiA+PiBj
b250cm9sbGVyOiBpbiBlbmRwb2ludCBtb2RlLCB0aGlzIGNvbnRyb2xsZXIgdXNlcyB0aGUgbG93
ZXIgYml0cyBvZiB0aGUKPiA+PiBsb2NhbCBlbmRwb2ludCBtZW1vcnkgYWRkcmVzcyBhcyB0aGUg
bG93ZXIgYml0cyBmb3IgdGhlIFBDSSBhZGRyZXNzZXMKPiA+PiBmb3IgZGF0YSB0cmFuc2ZlcnMu
IFRoYXQgaXMsIHdoZW4gbWFwcGluZyBsb2NhbCBtZW1vcnksIG9uZSBtdXN0IHRha2UKPiA+PiBp
bnRvIGFjY291bnQgdGhlIG51bWJlciBvZiBiaXRzIG9mIHRoZSBSQyBQQ0kgYWRkcmVzcyB0aGF0
IGNoYW5nZSBmcm9tCj4gPj4gdGhlIHN0YXJ0IGFkZHJlc3Mgb2YgdGhlIG1hcHBpbmcuCj4gPj4K
PiA+PiBUbyBmaXggdGhpcywgdGhlIG5ldyBlbmRwb2ludCBjb250cm9sbGVyIG1ldGhvZCAubWFw
X2FsaWduIGlzIGludHJvZHVjZWQKPiA+PiBhbmQgY2FsbGVkIGZyb20gcGNpX2VwY19tYXBfYWxp
Z24oKS4gVGhpcyBtZXRob2QgaXMgb3B0aW9uYWwgYW5kIGZvcgo+ID4+IGNvbnRyb2xsZXJzIHRo
YXQgZG8gbm90IGRlZmluZSBpdCwgdGhlIG1hcHBpbmcgaW5mb3JtYXRpb24gcmV0dXJuZWQKPiA+
PiBpcyBiYXNlZCBvZiB0aGUgZml4ZWQgYWxpZ25tZW50IGNvbnN0cmFpbnQgYXMgZGVmaW5lZCBi
eSB0aGUgYWxpZ24KPiA+PiBmZWF0dXJlLgo+ID4+Cj4gPj4gVGhlIGZ1bmN0aW9ucyBwY2lfZXBj
X21lbV9tYXAoKSBpcyBhIGhlbHBlciBmdW5jdGlvbiB3aGljaCBvYnRhaW5zCj4gPj4gbWFwcGlu
ZyBpbmZvcm1hdGlvbiwgYWxsb2NhdGVzIGVuZHBvaW50IGNvbnRyb2xsZXIgbWVtb3J5IGFjY29y
ZGluZyB0bwo+ID4+IHRoZSBtYXBwaW5nIHNpemUgb2J0YWluZWQgYW5kIG1hcHMgdGhlIG1lbW9y
eS4gcGNpX2VwY19tZW1fbWFwKCkgdW5tYXBzCj4gPj4gYW5kIGZyZWVzIHRoZSBlbmRwb2ludCBt
ZW1vcnkuCj4gPj4KPiA+PiBUaGlzIHNlcmllcyBpcyBvcmdhbml6ZWQgYXMgZm9sbG93czoKPiA+
PiAgLSBQYXRjaCAxIHRpZHkgdXAgdGhlIGVwYyBjb3JlIGNvZGUKPiA+PiAgLSBQYXRjaCAyIGFu
ZCAzIGludHJvZHVjZSB0aGUgbmV3IG1hcF9hbGlnbiBlbmRwb2ludCBjb250cm9sbGVyIG1ldGhv
ZAo+ID4+ICAgIGFuZCByZWxhdGVkIGVwYyBmdW5jdGlvbnMuCj4gPj4gIC0gUGF0Y2ggNCB0byA2
IG1vZGlmeSB0aGUgdGVzdCBlbmRwb2ludCBkcml2ZXIgdG8gdXNlIHRoZXNlIG5ldwo+ID4+ICAg
IGZ1bmN0aW9ucyBhbmQgaW1wcm92ZSB0aGUgY29kZSBvZiB0aGlzIGRyaXZlci4KPiA+IAo+ID4g
V2hpbGUgcG9zdGluZyB0aGUgbmV4dCB2ZXJzaW9uLCBwbGVhc2Ugc3BsaXQgdGhlIGVuZHBvaW50
IHBhdGNoZXMgaW50byBhCj4gPiBzZXBhcmF0ZSBzZXJpZXMuIEl0IGhlbHBzIGluIGNvZGUgcmV2
aWV3IGFuZCBjYW4gYmUgYXBwbGllZCBzZXBhcmF0ZWx5Lgo+IAo+IFdoaWNoIHBhdGNoZXMgPyBU
aGV5IGFyZSBhbGwgZW5kcG9pbnQgcmVsYXRlZDoKPiAgKDEpIENvcmUgY29kZQo+ICAoMikgdGVz
dCBmdW5jdGlvbiBkcml2ZXIKClRpbGwgcGF0Y2ggNiwgdGhhdCdzIHdoeSBJIGlubGluZWQgbXkg
cmVwbHkgYXQgdGhlIDNyZCBwb2ludC4KCj4gICgzKSByb2NrY2hpcCByazMzOTkgY29udHJvbGxl
cgo+IAo+ICgyKSBhbmQgKDMpIGRlcGVuZCBvbiB0aGUgcGF0Y2hlcyBpbiAoMSksIHNvIHNwbGl0
dGluZyB0aGUgc2VyaWVzIGlzIGEgYmlnCj4gcG9zc2libGUgb25seSBpZiAoMSkgaXMgYXBwbGll
ZCBmaXJzdCwgc28gdGhhdCBpcyBhIHNvdXJjZSBvZiBkZWxheXMgYW5kIGJyZWFrcwo+IHRoZSBj
b250ZXh0IG9mIHRoZSBwYXRjaGVzLi4uCj4gCgpJZiB5b3Ugc3BsaXQgcGF0Y2hlcyAxLTYgYW5k
IHBvc3QgdGhlIHJlc3Qgb2YgdGhlIFJvY2tjaGlwIHBhdGNoZXMgYXMgYSBmb2xsb3cKdXAsIGl0
IHBlcmZlY3RseSBtYWtlcyBzZW5zZS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
