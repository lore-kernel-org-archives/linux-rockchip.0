Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2916C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 10:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+vMz1FcJk1bpGfOaExlr9eiAwLLdlWK+aHlT8QX8amc=; b=JWy/+HVelAH5okkXaGBohnmyng
	JYZ8ZJ1ZUxWKPv+lFSL83TiFCgHObJcc6YqESzKvZEcgChp88jyuzQ+sbKT0QN7IUePbwRunSu8sg
	VYWT0XAVCHpVoQkjeEGKfBH+KlHTf9WUNmN/VzXfviR+9wzwD1xzLCWJKAn96KaohtmmY1AFT9CvK
	s+kKyQEh6fA1rVKC/ix56UvFcdaRaZ+TA2NXV5pzDGaIsRZM850FTXTWgAPJ1ufyG9/NegIGTW7mM
	eyMf03jxJ0fej3WFKgQTQW+ZMGmyKK5NvwOd3wx3HR3KP+j41WCNo5KoS2FyhF81n9QmfXRm3tC3/
	FkPBT7cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHiYc-00AaXn-1Q;
	Mon, 25 Dec 2023 10:51:38 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHiYZ-00AaWx-1o
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 10:51:36 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-67f911e9ac4so29354106d6.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 02:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703501494; x=1704106294; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D30t7uYYtHCBmu/X3X8dpYjlqixJi7gJaq2osDG8QfI=;
        b=LYlYchzNJzowimqcCZn1HM7tLHRYdM7noSboFTrzgtpKSiiySY/QJN0T2+Hdt2l5Tp
         VjdtzJMzNokNKW02gQ3fn3bk5vRTwThGizBC4cevWQJbdCuJ4CAiR4zSNbIrmqPEK//O
         tL9VFj1EWi60rPnYqZFuxQKHgozhUREYvUmrUH8BILDf9rAKXeb71Q5ZCY4tAGw9ty8w
         ZJVM7pXGA8NJsnFUrQ0KGcf9ciqG4O+VmxRE5ylzpHwq2KnHd/E/vQCxHXtGxvqaS8k4
         9Y1t7vqNQma8hXSaelBAwPO2ToxVEwPGA2bHAt3pBSrmi6VLkeieNZKbn+LGPR6YFqeK
         3NsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703501494; x=1704106294;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D30t7uYYtHCBmu/X3X8dpYjlqixJi7gJaq2osDG8QfI=;
        b=QEeaxsyq5jWZVKdnjW6iRpVaMv1Txt8966URNSvb35bO9oAIUjViO6lThIsOLu5Ylh
         GDl9e7fPfPchIPilXiL7orN30UlLzwz58Sp6STSF4nh6UpVZwBjQcPDN5xYTTbzA/E9q
         9lKM3EhJ6sLhucD5vCoHTW7I2MRvPcnGBqPBdHaI3zQm8rhIlnfSK2EwUoqnrTLi+eIo
         6P/AvWAvC+sY2nkm1Mpdo8iOzqdLsFNVuzbCu+o1gVDVdl4YU+kwXLgaZuP4n8vLBRb3
         CZeUVZCvNrG89zAK5PffrczETqGmSZniIbDlMCtnfdjnysqLWD5yFFjSSu1j8QXPbQa7
         pb0w==
X-Gm-Message-State: AOJu0YzvsX+UnIE1atTsv3eeOkYUCoznafOpW6gPPrvlFFiuiXSDX/cM
	FOylKOeA20s0Vz7vmYgpS2Y=
X-Google-Smtp-Source: AGHT+IFcn8hBKEn7Sg+JyfEobXk1pnb/F3frZyxgAWmqXifGMAIjjldwMYRdNTgTVR9OFrsBAUpmCw==
X-Received: by 2002:a05:6214:519c:b0:67a:a721:d77c with SMTP id kl28-20020a056214519c00b0067aa721d77cmr9339281qvb.98.1703501494142;
        Mon, 25 Dec 2023 02:51:34 -0800 (PST)
Received: from [192.168.20.212] (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id lg21-20020a056214549500b0067f91f3c53dsm3018359qvb.123.2023.12.25.02.51.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Dec 2023 02:51:33 -0800 (PST)
Message-ID: <13a83ffa-f0e3-4afb-1701-cd6c8fdf8031@gmail.com>
Date: Mon, 25 Dec 2023 05:51:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: support poweroff on the rock-5b
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
References: <20231225090856.3890-1-inindev@gmail.com>
 <20231225102030.10617-1-inindev@gmail.com>
 <576f22ba-c8c2-4796-8226-aee8a1d9d57b@linaro.org>
From: John Clark <inindev@gmail.com>
In-Reply-To: <576f22ba-c8c2-4796-8226-aee8a1d9d57b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_025135_614747_EAF53136 
X-CRM114-Status: GOOD (  17.20  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTIvMjUvMjMgNTo0M+KAr0FNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDI1
LzEyLzIwMjMgMTE6MjAsIEpvaG4gQ2xhcmsgd3JvdGU6Cj4+IEFsbG93IHRoZSByb2NrLTViIHRv
IHBvd2Vyb2ZmIGl0cyBwbWljLiBXaGVuIGlzc3VpbmcgYSAic2h1dGRvd24gLWggbm93IiBvbgo+
PiB0aGUgcm9jay01YiBpdCByZWJvb3RzIGluc3RlYWQuICBVc2luZyB0aGUgJ3N5c3RlbS1wb3dl
ci1jb250cm9sbGVyJyBhbGxvd3MKPj4gdGhlIHJrODA2IHRvIHBvd2VyIGRvd24gaW5zdGVhZC4K
Pj4KPj4gQ29tbWl0IGM2OTlmYmZkZmQ1NDYzMGZjNTFiOTZkYTU3N2YwMmU3Yjc3MmViMzcgc2lt
aWxhcmx5IHJlc29sdmVzIHRoaXMKPj4gaXNzdWUgZm9yIHRoZSBuYW5vcGMtdDYuCj4gVGhhdCdz
IG5vdCB0aGUgc3ludGF4IEkgYXNrZWQgZm9yLiBXaGVyZSBpcyBpdHMgc3ViamVjdD8gU3ludGF4
IGlzOgo+IGNvbW1pdCBmb28gKCJzdWJqZWN0IiksIHJlc3BlY3RpbmcgdGhlIGxlbmd0aCBvZiBT
SEEsIGFzIGNoZWNrZWQgYnkKPiBjaGVja3BhdGNoLgo+Cj4gWW91IHN0aWxsIG1pc3MgdjIgYW5k
IGNoYW5nZWxvZy4gSSBhbHNvIHdyb3RlIGFib3V0IHRoaXMuIGI0IGRvZXMgaXQgZm9yCj4geW91
LCBidXQgaWYgeW91IGRlY2lkZSB0byB1c2UgZ2l0IG1hbnVhbGx5LCB0aGVuIHlvdSBoYXZlIHRv
IGFkZCBpdC4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgpUaGUgZG9jdW1lbnRhdGlv
biBmb3LCoCAtLWluLXJlcGx5LXRvPTxpZGVudGlmaWVyPiBjbGVhcmx5IHN0YXRlcyB0aGF0IGl0
IAp3aWxsIGdlbmVyYXRlIHRoZSB2MiBzZW1hbnRpY3MgZm9yIHRoZSBzdWJqZWN0LCB5ZXQgaXQg
ZGlkIG5vdC7CoCBJIHVzZWQgCnRoZSBtZXNzYWdlLWlkIGZyb20gdGhlIGZpcnN0IG1lc3NhZ2Ug
c2luY2UgaXQgd2FzIGEgdHdvIGVtYWlsIHBhdGNoIHRvIApiZWdpbiB3aXRoLsKgIEl0IGlzIG5v
dCBjbGVhciB0byBtZSB3aHkgdGhpcyBkaWQgbm90IGhhcHBlbi7CoCBJIHdpbGwgc2VlIAppZiBJ
IGNhbiBmaW5kIGEgc2FuZGJveCB0byBwcmFjdGljZSBteSBnZXQtc2VuZC1lbWFpbCBza2lsbHMg
aW4uCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
