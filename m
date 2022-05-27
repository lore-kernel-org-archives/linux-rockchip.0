Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59677C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 20:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1vkU5EKGtfvgB0JuLQoNLzs7uaF4yPuhVDy6CxBCNU=; b=YLewgyeHE2sQMT
	LcQO0fLGGirsyImKRotAmEZsbBXsw2mWRZhgcbj+o/vxQJQl5cajUyXTGfXBLTzXEW+7kd9PFqfXI
	Fy54lfgXbk6NCWzCZS9yG3bcBf6GjUwers7VzcyE4zaz99WNjNUlWnU6+IgDQZRgFmKQVdaH4eUq/
	QhYXlaWZHMAxCFX4/BEuqdyBmJv90Gp3KCMmakFoaTSCAvftXiof6ACGQs04sBfU830edfhBJZBU+
	zeQlRKinowZlsDmLRku/rdbZwQ2ba1gPW2VTLirTaNWTUon41KJEOR7MBpM/e0i6qWyKvna9Gqzm1
	Dj3MWrqiVRLqGn2OjAow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nugDe-000tdY-Mw; Fri, 27 May 2022 20:05:58 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nugDc-000tcv-0D
	for linux-rockchip@lists.infradead.org; Fri, 27 May 2022 20:05:57 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id j3so4875665qvn.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 May 2022 13:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=g+pQqkTih63Ty7gF/Ucw70pNIC+bNdQYXn1gaDTT7SA=;
        b=WlnE80aTu92PLPbZ8osuq8WBerY2I3HSbhRn+z867J97rIIA85Ry4iA5BpjdmP00ex
         wxzSChNoikfGwEZ1dj67BEwk8h7YmPKgmOw5XbozDe9A07ZOUzv/MZkfkNmxsbWG+CA0
         QyTVH8LCridQvqfaQcmLtlO55WfXw7Tv6lpe3S4/0IGxKnZrKLFHSE/5KG3EXT3uGiLx
         8/UZFkE+xtpFJnSO/d44ROEE9E5VRl/GSgJofucWRmxZ7/SDt6WipmFuFNss+EtaW2LP
         Q9IN7CMbhA+MCr+dqBoOh4O+xFe9mNhR3y+J7ISHF1sxajfMZu8awUL8CvsQKrIHgrzZ
         SjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=g+pQqkTih63Ty7gF/Ucw70pNIC+bNdQYXn1gaDTT7SA=;
        b=GfFnlmdxBfe220+FhOHTcd8/LTp5C5mqziodMdoqj6T8DuJxqm1Z4bTwL05JMmXYdR
         cNaAVGDyxghKWA64tSZLvleciTehCcejh7VaKlDvzLttXLIxPI2f4zQ2CgITpF41Uz3g
         ldbwEGI3HxZuMj0Jkq4rNtYc1bGGM9rFpdGbhxGFPRKmHgzz+xaZhQ+82dVm789ztExW
         /CGT3jKwaKc3rfkNyOATgN5S6oHRm9G18wX1JdqllN1bcHEQ1iFBzOQXjHdouRm90906
         4PaXtH2eoAtbzRAQEq+MWkEQD6USIZuyh1yDJ+2bdPvzsLyOy0oxV7SgPNUMEMwu7JZ/
         YvpQ==
X-Gm-Message-State: AOAM531woCxub9js2OHe2iDCbHZ7TnxMmPEEUHiXOzCihcM0X4eYKbBx
	7spzpyUEi+ruJnhqVE4rHvWnjQ==
X-Google-Smtp-Source: ABdhPJypfwKyW9QIJgtPwkcsv3L6wbUSugzXr5toVyTpByWMXC9eJMXmJf8swe/WfITuwBOtB1P+8A==
X-Received: by 2002:ad4:5944:0:b0:462:310a:b54c with SMTP id eo4-20020ad45944000000b00462310ab54cmr24814360qvb.41.1653681952811;
        Fri, 27 May 2022 13:05:52 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id k25-20020ac84759000000b002fcb0d95f65sm2425544qtp.90.2022.05.27.13.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 May 2022 13:05:52 -0700 (PDT)
Message-ID: <fd8c9ef48b48e014c468fe8cf61cd44062d14b1d.camel@ndufresne.ca>
Subject: Re: [PATCH v2] media: Hantro: Correct G2 init qp field
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Fri, 27 May 2022 16:05:51 -0400
In-Reply-To: <20220524115945.2294015-1-benjamin.gaignard@collabora.com>
References: <20220524115945.2294015-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.44.1 (3.44.1-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_130556_084440_7F0DE080 
X-CRM114-Status: GOOD (  14.33  )
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

TGUgbWFyZGkgMjQgbWFpIDIwMjIgw6AgMTM6NTkgKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIGEg
w6ljcml0wqA6Cj4gRG9jdW1lbnRhdGlvbiBzYWlkIHRoYXQgZzIgaW5pdF9xcCBmaWVsZCB1c2Ug
Yml0cyAyNCB0byAzMCBvZgo+IHRoZSA4dGggcmVnaXN0ZXIuCj4gQ2hhbmdlIHRoZSBmaWVsZCBt
YXNrIHRvIGJlIGFibGUgdG8gc2V0IDcgYml0cyBhbmQgbm90IG9ubHkgNiBvZiB0aGVtLgo+IAo+
IENvbmZvcm1hbmNlIHRlc3QgSU5JVFFQX0JfTWFpbjEwX1NvbnlfMSBkZWNvZGluZyBpcyBPSyB3
aXRoIHRoaXMKPiBwYXRjaC4KPiAKPiBGaXhlczogY2I1ZGQ1YTBmYTUxOCAoIm1lZGlhOiBoYW50
cm86IEludHJvZHVjZSBHMi9IRVZDIGRlY29kZXIiKQo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWlu
IEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6
IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4gLS0t
Cj4gV2l0aCB0aGlzIHBhdGNoIGFuZCB0aGUgcGF0Y2hlcyBuZWVkZWQgZm9yIDEwLWJpdCBzdXBw
b3J0Cj4gRmx1c3RlciBIRVZDIHNjb3JlIGlzIDEzNy8xNDcKPiAKPiB2ZXJzaW9uIDI6Cj4gLSBB
ZGQgRml4ZXMgdGFnCj4gCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cy
X3JlZ3MuaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFu
dHJvX2cyX3JlZ3MuaCBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX3Jl
Z3MuaAo+IGluZGV4IDg3N2Q2NjNhODE4MS4uODI2MDY3ODM1OTFhIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX3JlZ3MuaAo+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX3JlZ3MuaAo+IEBAIC0xMDcsNyArMTA3
LDcgQEAKPiAgCj4gICNkZWZpbmUgZzJfc3RhcnRfY29kZV9lCQlHMl9ERUNfUkVHKDEwLCAzMSwg
MHgxKQo+ICAjZGVmaW5lIGcyX2luaXRfcXBfb2xkCQlHMl9ERUNfUkVHKDEwLCAyNSwgMHgzZikK
PiAtI2RlZmluZSBnMl9pbml0X3FwCQlHMl9ERUNfUkVHKDEwLCAyNCwgMHgzZikKPiArI2RlZmlu
ZSBnMl9pbml0X3FwCQlHMl9ERUNfUkVHKDEwLCAyNCwgMHg3ZikKPiAgI2RlZmluZSBnMl9udW1f
dGlsZV9jb2xzX29sZAlHMl9ERUNfUkVHKDEwLCAyMCwgMHgxZikKPiAgI2RlZmluZSBnMl9udW1f
dGlsZV9jb2xzCUcyX0RFQ19SRUcoMTAsIDE5LCAweDFmKQo+ICAjZGVmaW5lIGcyX251bV90aWxl
X3Jvd3Nfb2xkCUcyX0RFQ19SRUcoMTAsIDE1LCAweDFmKQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
