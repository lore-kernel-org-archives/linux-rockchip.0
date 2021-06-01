Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D439C47080
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 17:17:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B25D610C9
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 17:17:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B25D610C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vt30ClEjMnoOYks8rtMG1mno/OGKeQKI4LhYeru4wSQ=; b=cnZ7wU/NRyXIP+
	b3hQCBU1RjPS89ly+QhqtsagzcONeEqSAjoO2SAAbT6P+htx5pNQEB6dsp/W44yEJxBEgFeG4KTzx
	TIuGZUHi8JPI96RTFh/dM8bLca7+LeCpmL0TRn3gF/NNz7xNYnH2J8czE7uAb8G5249BbY2WSARK9
	IaJ4S7ZoEgzokMHSI26uNCBKbhhVlmQK7/TDQ0SfTJSBDujebqQU8mhdabAe6OiNNDXwaQHV4pXqO
	mkM/Rl39w+nNn2WvEhdGQ7QButT3C6mYJsFm8M5wdB4OXKTGqDyzs1h+I9F3MQgMVPsMNlmyXOH1O
	btHEETusk40ieLHRMmGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo80y-0003l7-R8; Tue, 01 Jun 2021 17:17:16 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo80w-0003jm-2y
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 17:17:15 +0000
Received: by mail-ot1-x335.google.com with SMTP id
 l19-20020a0568301553b02903beaa8d961aso64375otp.0
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Jun 2021 10:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=6SAc4++qABizp6ptj0SCF0e03ok47gKm5Ef5EiX32Oo=;
 b=PpAvrlDOxyYXDMLesS+IfXJmAmPMagvcqcnIjsYohPPHPUmG6Ll2FyUgt0xxXzkSp9
 8PhSdcovoP/NXrjrKmWjH9vdBJ0msXTmhfaV7AZ4CE5cb3Ul+u1q9z2IJEHHUufeimYS
 Y5YV7LTnRra7xuJC1vUYNBZQ6L0EZH/P5kIUhEFuM20ihi8vp70CPlkUyF0CjflvrETO
 quVaRPtPXL2lRJujNHAXiR8whHTvuU5smKdoJqv0QwD559Oz05yX61f1H5qD77DzjAnR
 LpSJS9ShwlYFNvE1XmDo3Vxv9t2t2GGnRPYZ6kH9x4184vijuCAcjTLOzqGh1OLxXu8P
 H27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6SAc4++qABizp6ptj0SCF0e03ok47gKm5Ef5EiX32Oo=;
 b=lH60qdzoi0PXoPzTeyOKKKvhogGPaRvcSuV6JgFF1LCM67FCPNgI/lqGA5y2lJePXo
 40JPBFfj/AvmnjNhZMAZCGJvYh+QOOpQ5RKbqctn7dxKsWXNzVWeY/VeDLg4nQ2ogDpY
 sszEmRTU1gEkRlHHoJKyUfMqLt8eMc+iq0THuYntf9bXoaBtTADW2xNg0QGaj0812cC8
 U+HAuQnnBN+CXZE6r4myf4sG2FrsiuD/yd6d6mWZu5QZh7QUiVf82jAEd4wVJ9oUYPw3
 9nGHbqFIgtiy6o8ueIinC4vwpXRwUS6/3V1a1zisKMOoqV4gQndZs0fT8uO1VqSn6Id8
 E+ZQ==
X-Gm-Message-State: AOAM533XQxQqtVFtSJNYGwse3EozaxshbA7eGXLyJhDz3xFhiG3F+6+7
 uflkMZMXU1JJa8Y/15l5X/k=
X-Google-Smtp-Source: ABdhPJxtizSIYWeWnAtw7Z79wz0XdWb3imQFmVDNpImDOF0JRE38WXiBeG/YJoJmhwbhLy8u8P6KQQ==
X-Received: by 2002:a9d:7610:: with SMTP id k16mr22770791otl.32.1622567832894; 
 Tue, 01 Jun 2021 10:17:12 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id s26sm1314325otd.61.2021.06.01.10.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 10:17:12 -0700 (PDT)
Date: Tue, 1 Jun 2021 12:17:08 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210601171708.GA3529@wintermute.localdomain>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell> <20210601155832.GC2165650@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601155832.GC2165650@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_101714_163975_BBF3DBB6 
X-CRM114-Status: GOOD (  19.55  )
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

T24gVHVlLCBKdW4gMDEsIDIwMjEgYXQgMDQ6NTg6MzJQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIFR1ZSwgMDEgSnVuIDIwMjEsIExlZSBKb25lcyB3cm90ZToKPiAKPiA+IEkndmUgYXBw
bGllZCB0aGUgbm9uLUFybSBwYXRjaGVzLgo+ID4gCj4gPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMg
c2luY2UgY29tbWl0IDZlZmI5NDNiODYxNmVjNTNhNWU0NDQxOTNkY2NmMWFmOWFkNjI3YjU6Cj4g
PiAKPiA+ICAgTGludXggNS4xMy1yYzEgKDIwMjEtMDUtMDkgMTQ6MTc6NDQgLTA3MDApCj4gPiAK
PiA+IGFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Ogo+ID4gCj4gPiAgIGdp
dDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvbWZkLmdpdCB0
Yi1tZmQtYXNvYy12NS4xNAo+ID4gCj4gPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8g
NDM3ZmFhYTZjZWJhZGY4ZmY0YzJjMjhkN2NiMjZlZDRlMzRhZWIxNDoKPiA+IAo+ID4gICBkdC1i
aW5kaW5nczogQWRkIFJvY2tjaGlwIHJrODE3IGF1ZGlvIENPREVDIHN1cHBvcnQgKDIwMjEtMDYt
MDEgMTM6NDA6NDEgKzAxMDApCj4gPiAKPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IEltbXV0YWJsZSBicmFuY2gg
YmV0d2VlbiBNRkQgYW5kIEFTb0MgZHVlIGZvciB0aGUgdjUuMTQgbWVyZ2Ugd2luZG93Cj4gPiAK
PiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiA+IENocmlzIE1vcmdhbiAoMyk6Cj4gPiAgICAgICBtZmQ6IEFkZCBSb2Nr
Y2hpcCByazgxNyBhdWRpbyBDT0RFQyBzdXBwb3J0Cj4gPiAgICAgICBBU29DOiBBZGQgUm9ja2No
aXAgcms4MTcgYXVkaW8gQ09ERUMgc3VwcG9ydAo+ID4gICAgICAgZHQtYmluZGluZ3M6IEFkZCBS
b2NrY2hpcCByazgxNyBhdWRpbyBDT0RFQyBzdXBwb3J0Cj4gPiAKPiA+ICBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JrODA4LnR4dCB8IDE4OCArKysrKysrKysKPiA+ICBk
cml2ZXJzL21mZC9yazgwOC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA4MSArKysr
Cj4gPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCAgICAgICAgICAgICAgICAgICAgICAgfCAg
ODEgKysrKwo+ID4gIHNvdW5kL3NvYy9jb2RlY3MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICA2ICsKPiA+ICBzb3VuZC9zb2MvY29kZWNzL01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMiArCj4gPiAgc291bmQvc29jL2NvZGVjcy9yazgxN19jb2RlYy5jICAgICAg
ICAgICAgICAgICAgfCA1MzkgKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgNiBmaWxlcyBj
aGFuZ2VkLCA4OTcgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9z
b2MvY29kZWNzL3JrODE3X2NvZGVjLmMKPiAKPiBMb29rcyBsaWtlIHRoZSBidWlsZGVycyByZXBv
cnRlZCBhIFc9MSB3YXJuaW5nIGludHJvZHVjZWQgYnkgdGhlIHNldC4KPiAKPiBXb3VsZCB5b3Ug
bGlrZSBtZSB0byBmaXggaXQgYW5kIHN1Ym1pdCBhIHBhdGNoPwoKSSBjYW4ndCBzZWVtIHRvIHJl
cHJvZHVjZSB0aGUgd2FybmluZywgYXJlIHRoZXJlIG1vcmUgZGV0YWlscyBhcyB0bwp3aGF0IGlz
IGNhdXNpbmcgaXQ/CgpUaGFuayB5b3UuCgo+IAo+IC0tIAo+IExlZSBKb25lcyBb5p2O55C85pav
XQo+IFNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwo+IExpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29Dcwo+IEZvbGxvdyBMaW5hcm86
IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
