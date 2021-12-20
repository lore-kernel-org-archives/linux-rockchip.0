Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53113C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 17:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbUUu5gWf0v5U38H/LIRIoQ2e+3TPx4YgkQVnlnmYus=; b=Q+7G7hFTnj3KMC
	FhARilP1LvMe+adjRnDhuI24/0X4Dric+90Ln3Y5kCAQGnZz6UnSiZLT9m6CogFoAxXijqG7cRbsz
	MyzfxMvl/g+Xqmv9R50LgZpm2LPH9Lza1qhaq8pWkBDveNoRHbh4Qrv2/6NpIJtZjdgXK2v58iuK9
	8ESxXN7/iQgSPzBrheOwCt6jSLlqTkg5faxLSDWhLWV+fej6JA6gvkOIBnTqe5TtnQ+1BQrYtgurw
	9Q3S4fTQ7qSpybAfldOJNCNVg/CKDU/dbNeTAIv2pMUgwWlk9ixLD1V1vT8+06StXfqo06PIS/nGt
	tk+VCB/SwY263/CDzqZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzM8F-003SzX-DD; Mon, 20 Dec 2021 17:07:27 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzM8C-003SyI-NT
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 17:07:26 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id g17so30619211ybe.13
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Dec 2021 09:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/vGg57+Lx01rJOL0ZhVsf4BrYu1RDSpnZdQ9lgCWOVk=;
 b=Q8tWcGZEA2RwU8ph7C8XH17hY5haCfVSblfA1IOWIbH8QAu9bSscvDUXUBu9D/QnF/
 f9brp6m2rRS2E+U8AleTh8YdO1krRwtV9uKRejX+nonXaKWPTr5bY1fUS8z12E8FBlCR
 v3N2cDchfkImjqS/6jSk5FTJqHGEd6K2+3puFNkJA6mwSB2Cfngo4SK7eQ7nU55IQY9P
 G73dsBqnE8/uBTed1Nq814/CitTuk9GoPKlwr2y1Qlyd6KAiubvGHsAx1r8xaz2Q2cDh
 sueV9ITQnlW650TCH/J9/10Y4Cz/dc2IXdbpzujXaCUpv2SQ6bMn+22/71OyhhSbnjQK
 Abhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/vGg57+Lx01rJOL0ZhVsf4BrYu1RDSpnZdQ9lgCWOVk=;
 b=dzX4AjVgXCxaLWnw+JPG5r90QOOkqjps37YgiA7efvKJUClfIMNUA0ommiFKvOir2v
 M4pj2HMI63pMaeHPxNtORKov6aVfo7CYTivxA8hU4l/poacM9/sATw+9sJ2RW/iyxb5e
 Vm9tRCAemEm/O0qWOu0eZT7ZVf3aNoyumxatd+Tvxhmwfstwhl3kcjUfkHiANDHFe3mg
 JbxgvSKb11jIrqEg35Qp1fgQECGIxPZvt6XZJoV36oWSpU9ZDNxsVnL+dSVJc4btuUzM
 v76w29xl8K6f9JP8GZjRj5A73tXw/DLdaEyxw2SMbJTwJf7q+tGs1ftO5i77yyS1d5dA
 k3fg==
X-Gm-Message-State: AOAM533IMNGKYM4g0s24n/SfG6Fjg8kS74AN/g94PG07EudnMHAqHH48
 V/hQfgG0r3+nCqOB27rYunddAKFlDc/l+BDKGns=
X-Google-Smtp-Source: ABdhPJzqi3Y0rFLMOjNnGpRCeJK8EYzvGtbOVCEEW+XrAligjHV5vfUmYxuvatKdOlVN51nPEk0MMvHxJVVj2lIpCZk=
X-Received: by 2002:a25:84c1:: with SMTP id x1mr23994389ybm.690.1640020043245; 
 Mon, 20 Dec 2021 09:07:23 -0800 (PST)
MIME-Version: 1.0
References: <20211220144654.926112-1-pgwipeout@gmail.com>
 <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
 <b0d0e2ff-4282-f104-b8f5-554b059200c9@gmail.com>
In-Reply-To: <b0d0e2ff-4282-f104-b8f5-554b059200c9@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 20 Dec 2021 12:07:12 -0500
Message-ID: <CAMdYzYoYU-Avi1RK_-gHBWqiWdnxH9Pwa5nnJkU1ZewHm-1OHw@mail.gmail.com>
Subject: Re: Aw: [PATCH v3] mfd: rk808: add reboot support to rk808.c
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Lee Jones <lee.jones@linaro.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_090724_798871_DB626757 
X-CRM114-Status: GOOD (  11.45  )
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

T24gTW9uLCBEZWMgMjAsIDIwMjEgYXQgMTE6MzYgQU0gRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhA
Z21haWwuY29tPiB3cm90ZToKPgo+IDIwLjEyLjIwMjEgMTk6MzMsIEZyYW5rIFd1bmRlcmxpY2gg
0L/QuNGI0LXRgjoKPiA+IEhpCj4gPgo+ID4+IEdlc2VuZGV0OiBNb250YWcsIDIwLiBEZXplbWJl
ciAyMDIxIHVtIDE1OjQ2IFVocgo+ID4+IFZvbjogIlBldGVyIEdlaXMiIDxwZ3dpcGVvdXRAZ21h
aWwuY29tPgo+ID4+IEBAIC03NDksNiArNzkxLDkgQEAgc3RhdGljIGludCByazgwOF9yZW1vdmUo
c3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKPiA+PiAgICAgIGlmIChwbV9wb3dlcl9vZmYgPT0g
cms4MDhfcG1fcG93ZXJfb2ZmKQo+ID4+ICAgICAgICAgICAgICBwbV9wb3dlcl9vZmYgPSBOVUxM
Owo+ID4+Cj4gPj4gKyAgICBpZiAob2ZfcHJvcGVydHlfcmVhZF9ib29sKG5wLCAicm9ja2NoaXAs
c3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIiKSkKPiA+PiArICAgICAgICAgICAgdW5yZWdpc3Rlcl9y
ZXN0YXJ0X2hhbmRsZXIoJnJrODA4X3Jlc3RhcnRfaGFuZGxlcik7Cj4gPj4gKwo+ID4+ICAgICAg
cmV0dXJuIDA7Cj4gPj4gIH0KPiA+Cj4gPiB0aGlzIGNoYW5nZSBtaXNzZXMgYSBkZWNsYXJhdGlv
bgo+ID4KPiA+IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBjbGllbnQtPmRldi5vZl9ub2RlOwo+
Cj4gR29vZCBjYXRjaCwgdGVjaG5pY2FsbHkgdGhlIHdob2xlIG9mX3Byb3BlcnR5X3JlYWRfYm9v
bCgpIGNvdWxkIGJlCj4gZHJvcHBlZCBmcm9tIHJrODA4X3JlbW92ZSgpIHNpbmNlIHVucmVnaXN0
ZXJfcmVzdGFydF9oYW5kbGVyKCkgc3Vydml2ZXMKPiBpZiBoYW5kbGVyIHdhc24ndCByZWdpc3Rl
cmVkLgoKVGhhbmsgeW91IGFsbCEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
