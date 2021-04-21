Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35853C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 22:13:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B1FD6142B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 22:13:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7B1FD6142B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fi3o2lWEseg2ttZbJ6doyk+T2Bs2UtFZSq2KldWugwY=; b=Qjn0nUUvRsontIGk7H14sQjgQ
	blU5cdx9GWEbZokgGXkSE9stJ3mVIzAE4XTuISa6A7QP+xHa8MzgW1B0aRssVVwwRSYxea5DgyWZ+
	0ukSGoaocpAGzKIf9GWG9x5QVzAb4vBx3/MrJ63zfmLxVcIXXZrqfsFyFqmI9sIJnXYQWLAmYTfHJ
	NvbE8tQp4UA16Hcqf7WyfGHaEBArMBDnrIt7hseq4gdpijFjQ759Xw7OIxU4GrrYMGqUHFrhnCBNP
	A82RO+C07Xs6effova/DMDQR2e42MG2iknu+qyFv/1one0v/MkT8CcHP4KhZPhP7nNyJBsTZiRUZk
	yFwJRikeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZL5m-00FGwW-Pz; Wed, 21 Apr 2021 22:13:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZL5Y-00FGuC-Kx
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 22:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=R+7lOBqLD5Z6bTcs4+c+UgzXRm2npxKYFhj46LfCB+M=; b=0ynNorMkLpUs9ToQo0knJwpIIT
 q1z9y+bTscV9d4QcHLU+eeeYLjeOmc7olXvXKNER2TlC8pt8aNCA3U7dlFTjYagRnEHbNnyhZaoAe
 Qqi97046ArsqwXQ1vGFKw92F0/mp0H2UClFgZbW5h5tQXeLoSeQ3btGP4jk4Zk01gBW3nt6ZyM4v2
 zE8RtmsJzR1nlh7xGRw4ihZcpctLQjmS+dbBQ8YuuLNzGlEuHAI3GUI/hP6Qzp4OUE0y5vOu1/oFF
 c8ozZslALkb1bmT/C86Y4sp169iqu9cjq+CZ/4T8/eAbkB8pVP6Bhw1dVZ7nJ2ZB+FpWueL1Rgihp
 4yfeffQw==;
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZL5W-00DDrx-0T
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 22:12:51 +0000
Received: by mail-ej1-x634.google.com with SMTP id w3so65758932ejc.4
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 15:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=R+7lOBqLD5Z6bTcs4+c+UgzXRm2npxKYFhj46LfCB+M=;
 b=RnLNg4giHfH1ktF1ZYjXkxbfCpDfkSVazNzxCmpJ2H+gAtqqpTP0zuLNXXtZeRK41Q
 VPO7hFAJPPpWbcwIJqMw9xycXohInbfOaaQGDLsZVEDra6ECEY5LRmu11L1kWBQQ9Byg
 nSh05Zb5tYVk6lMiuxkCmdBI+VbTOoY8CAPCfnY/eOhAQfddZC0baDWQaCN0wdCHPtNy
 kDcPP93R0TalPoVut7B6cJCU5XQyH7vN3bwXArfYTU5tqVqwsXnmkxiPIprAlOKe+ILN
 d63OeuZf74MFE5AmEtuRzFbVrgayct3HLHAYmpSUQBR513m3b/X/jSZ0MswAcSMfKzNA
 kyPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=R+7lOBqLD5Z6bTcs4+c+UgzXRm2npxKYFhj46LfCB+M=;
 b=E9pDTB9En3I4e01PjU617KxIjS/mkzrp3F62N8k7ezDK5J7zfpLVCZN1HvX3hktf0+
 Reqtpqwz28YDgTTm9pJJXJALgSchWGsBNM8aW7Qld0IPilaUW6N6K3xJylihhlahmdk8
 sQm56T0yU84qV1YJU+1Z3Ycb0w8XC6/5UKRuEAHqrxSJumg+M+WTHAJA/q52R4bbUoRp
 bybM17JEqCOJIvFICPixeGX3rrm39L+GiDRbRmbklH3IWXhyS2rDXoxNOv2kIBaaAkbx
 ZD9Hva+J6c0go81HZ+nDFx2hZyPEaj0q2NkadjqeSvLGSRDEqc/GT/Lco7qn4b7id8Gz
 d0Jw==
X-Gm-Message-State: AOAM532juqgjVR3uqMum/iJfQP1nQuRA7LwXMri8PG8lF3yOpC9uueRP
 d4y2OlxS0hdsg34eeEymW34=
X-Google-Smtp-Source: ABdhPJwnO50+gnpA5Ec9ZaKtMRJev8c9mYapkUNSr2Ko1H5jXHxGgWECrUE+oV3mG0u03kYyKSE36Q==
X-Received: by 2002:a17:907:270f:: with SMTP id
 w15mr54666ejk.462.1619043168600; 
 Wed, 21 Apr 2021 15:12:48 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 n2sm560459edi.32.2021.04.21.15.12.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Apr 2021 15:12:48 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568 SoC
 compatible
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Zhang Rui <rui.zhang@intel.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
References: <20210421200445.32977-1-ezequiel@collabora.com>
 <557ae27c-1d62-69e0-7ae6-921571059f9f@gmail.com>
 <31272ad0e6a5274080831406796960506c6a6912.camel@collabora.com>
 <ca5d55ef-e364-be7a-5ad6-81f039c691e6@gmail.com>
 <bf0771cec69e11bf4622421a3aa8f2092da42429.camel@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <31c2e531-96d0-a1c1-644c-28c60eb40cf4@gmail.com>
Date: Thu, 22 Apr 2021 00:12:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <bf0771cec69e11bf4622421a3aa8f2092da42429.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_151250_094469_0083EE6B 
X-CRM114-Status: GOOD (  30.60  )
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

T24gNC8yMS8yMSAxMTo1NiBQTSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+IE9uIFdlZCwgMjAy
MS0wNC0yMSBhdCAyMzoyNSArMDIwMCwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+PiBPbiA0LzIxLzIx
IDExOjA2IFBNLCBFemVxdWllbCBHYXJjaWEgd3JvdGU6Cj4+PiBPbiBXZWQsIDIwMjEtMDQtMjEg
YXQgMjI6NDYgKzAyMDAsIEpvaGFuIEpvbmtlciB3cm90ZToKPj4+PiBPbiA0LzIxLzIxIDEwOjA0
IFBNLCBFemVxdWllbCBHYXJjaWEgd3JvdGU6Cj4+Pj4+IEFkZCBhIG5ldyBjb21wYXRpYmxlIGZv
ciB0aGUgdGhlcm1hbCBzZW5zb3IgZGV2aWNlIG9uIFJLMzU2OCBTb0NzLgo+Pj4+Pgo+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4+
Pj4+IC0tLQo+Pj4+PiDCoERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFs
L3JvY2tjaGlwLXRoZXJtYWwudHh0IHwgMSArCj4+Pj4+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnR4dCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwudHh0Cj4+Pj4+IGlu
ZGV4IDdmOTQ2NjllOWViZS4uMzQ2ZTQ2NmMyMDA2IDEwMDY0NAo+Pj4+PiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnR4dAo+
Pj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yb2Nr
Y2hpcC10aGVybWFsLnR4dAo+Pj4+PiBAQCAtOSw2ICs5LDcgQEAgUmVxdWlyZWQgcHJvcGVydGll
czoKPj4+Pj4gwqDCoMKgICJyb2NrY2hpcCxyazMzMjgtdHNhZGMiOiBmb3VuZCBvbiBSSzMzMjgg
U29Dcwo+Pj4+PiDCoMKgwqAgInJvY2tjaGlwLHJrMzM2OC10c2FkYyI6IGZvdW5kIG9uIFJLMzM2
OCBTb0NzCj4+Pj4+IMKgwqDCoCAicm9ja2NoaXAscmszMzk5LXRzYWRjIjogZm91bmQgb24gUksz
Mzk5IFNvQ3MKPj4+Pgo+Pj4+PiArwqDCoCAicm9ja2NoaXAscmszNTY4LXRzYWRjIjogZm91bmQg
b24gUkszNTY4IFNvQ3MKPj4+Pgo+Pj4+IFRoaXMgaXMgc3RpbGwgYSB0ZXh0IGRvY3VtZW50Lgo+
Pj4+IHJvYitkdCBoYXMgbm93IHNjcmlwdHMgdGhhdCBjaGVjayBmb3IgdW5kb2N1bWVudGVkIGNv
bXBhdGliaWxpdHkKPj4+PiBzdHJpbmdzLCBzbyBmaXJzdCBjb252ZXJ0IHJvY2tjaGlwLXRoZXJt
YWwudHh0IHRvIFlBTUwgYW5kIHRoZW4gYWRkIHRoaXMKPj4+PiBpbiBhIHNlcGFyYXRlZCBwYXRj
aC4KPj4+Pgo+Pj4KPj4+IElzIGl0IGEgc2hvd3N0b3BwZXIgdG8gY29udmVydCBkZXZpY2V0cmVl
IGJpbmRpbmdzIHRvIFlBTUwgZm9yIGRyaXZlciBzdWJtaXNzaW9uPwo+Pgo+PiBZb3Ugbm93IHRo
YXQgaGFyZHdhcmUgYmVzdCwgc28gdHJ5IHRvIGZpeCB0aGUgZG9jdW1lbnRzIGFzIHdlbGwuCj4g
Cj4gV2VsbCwgbm90IHJlYWxseS4gSSdtIGp1c3QgZm9yd2FyZCBwb3J0aW5nIHRoZSBkcml2ZXIg
ZnJvbSBkb3duc3RyZWFtIGtlcm5lbHMsCj4gc28gd2UgY2FuIHN1cHBvcnQgdGhpcyBuZXcgU29D
LiBOb3QgcmVhbGx5IGEgaGFyZHdhcmUgX2V4cGVydF8gZm9yIGFsbCB0aGUKPiBkZXZpY2VzIEkg
cGxhbiB0byBiZSBwdXNoaW5nLgo+IAo+PiBUaGUgbmV3IG5vcm0gaXMgWUFNTCwgc28gYWltIGZv
ciB0aGF0Lgo+IAo+IEkgYW0gYXdhcmUgb2YgdGhhdC4gSW4gZmFjdCwgYXQgQ29sbGFib3JhIHdl
IGVuY291cmFnZSBhbGwgdGhlIGtlcm5lbAo+IGRldmVsb3BlcnMgdG8gY29udmVydCB0byBZQU1M
LCBpZi93aGVuIHBvc3NpYmxlLgo+IAo+PiBUcnkgdG8gc3VibWl0IGEgY29tcGxldGUgcGFja2Fn
ZSBvZiBZQU1MLCBkcml2ZXIgKGFuZCBkdHMgbm9kZXMpIGZvciByZXZpZXcuCj4gCj4gVGhlIGRl
dmljZXRyZWUgZm9yIFJLMzU2NiBhbmQgUkszNTY4IGlzIHVuZGVyIGRpc2N1c3Npb24sIGluIGZh
Y3QgaXQgd2FzIHN1Ym1pdHRlZCB0b2RheS4KPiBSb2NraGlwIGlzIGxlYWRpbmcgdGhhdCwgYW5k
IGRvaW5nIGEgZ3JlYXQgam9iIGFscmVhZHkgOikKPiAKPiBNZWFud2hpbGUsIEknZCBsaWtlIHRv
IG1lcmdlIHRoZSBzbWFsbCBkcml2ZXJzICh0aGVybWFsLCBwbWljLCBkd21hYywgaW8tZG9tYWlu
cyBhbmQgc28gb24pLAo+IHNvIHRoZXkgYXJlIHJlYWR5IHdoZW4gdGhlIGRldmljZXRyZWUgbGFu
ZHMuCj4gCgo+IE1vc3QgaWYgbm90IGFsbCBvZiB0aGVzZSBkZXZpY2VzIGp1c3QgbmVlZCBhIG5l
dyBjb21wYXRpYmxlIHN0cmluZy4gSXQgd291bGQgcmVhbGx5IGRlbGF5Cj4gdGhpbmdzIGlmIEkg
YWltIHRvIGNvbnZlcnQgYWxsIHRob3NlIGJpbmRpbmdzIGRvY3MgdG8gWUFNTCBmaXJzdCwgc28g
bGV0J3MgcGxlYXNlIGF2b2lkIHRoYXQuLi4KPiAuLi4gdW5sZXNzIGl0J3MgYSBuZXcgaGFyZC1y
dWxlIHRoYXQgRFQgbWFpbnRhaW5lcnMgaGF2ZSBhZ3JlZWQgb24uCgpFdmVyeSBkcml2ZXIgZ3Jv
dXAgaGFzIGl0J3Mgb3duIGRlbGF5IHRpbWUsIHNvIGJldHRlciBkbyBpdCByaWdodCBpbiBvbmUK
cnVuLgpNb3N0bHkgcGVvcGxlIHRlbmQgdG8gJ2ZvcmdldCcgZG9jdW1lbnRhdGlvbiBhbmQgdGhl
biBzb21lb25lIGVsc2UgaGFzCnRvIGNsZWFuIHVwIHRoZSBtZXNzLiBTbyBJIHByb3Bvc2UgdGhh
dCB0aGUgcGVyc29uIHRoYXQgc3VibWl0cyBhIG5ldwpkcml2ZXIgYWxzbyBmaXhlcyB0aGUgZG9j
dW1lbnRhdGlvbi4gVGhlIG5vcm0gaXMgbm93IFlBTUwsIHNvIHRoaXMgc2VyaWUKaGFzIG1vcmUg
d29yayB0aGVuIG90aGVyLCBzbyBiZSBpdC4gT3RoZXJzIGNhbiBoZWxwIHlvdSB3aXRoIGl0IGlm
IHlvdSBhc2suCgpKb2hhbgoKPiAKPiBIYXZpbmcgc2FpZCB0aGF0LCBpZiB5b3Ugd2FudCB0byBo
ZWxwIHRoZSBSSzM1NjggYnJpbmd1cCBhZHZlbnR1cmUsCj4gY29udmVydGluZyB0aGUgYmluZGlu
Z3MgdG8gWUFNTCwgdGhhdCB3b3VsZCBiZSByZWFsbHkgYXBwcmVjaWF0ZWQhIE9mIGNvdXJzZSwg
SSBrbm93Cj4geW91J3ZlIGNvbnZlcnRlZCBwbGVudHkgb2YgdGhlbSBhbHJlYWR5LCBhbmQgSSBh
bHJlYWR5IGFwcHJlY2lhdGUgdGhhdCA6KQo+IAo+IFRoYW5rcywKPiBFemVxdWllbAo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
