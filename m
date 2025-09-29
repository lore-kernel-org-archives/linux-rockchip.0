Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A321BCAC5B9
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 18:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmaaRq7dwmOVHrf5bsG0o3ub6Y8txB9tjNv+Z5Nnkas=; b=bbZilkF2FLzF9a
	TA7Owz6XmxzWoAf/+DfaBUgp//wtozPTvznf/7aTZT1iB+xKyXfMEHOvsPLrlag3GaNpRXXv5AKlm
	rCiWxuGuTLcjijrWiBKoQzQfCLZUvMQVJWYnrKBQn7Jc/zJUJbQrXHSIGK5EOqfSoNeqzNQ79t1jM
	wUalG9bi/iuHJUpSgcd69aBrPSS8QtktX3ow5nrU2ZcVu6kWLgnw0GcOVs2E6ctDjQ3OgbDe+r21g
	MyLkUuqJma2A+2OAuKRU66Lkn9zDtT2/s5hw0mQ8uRkLpVtRFAo3/78xmS+i7V+AmfqQ7CVO1Sge+
	TmQphH8F9RIlOGuWvtdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3IUr-00000003EN0-3JtS;
	Mon, 29 Sep 2025 18:21:13 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3IUp-00000003EM9-0tS7
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 18:21:12 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-85d02580a07so296525185a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 11:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759170070; x=1759774870; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtEAn6CmDr27aj5SF5YUmQQCee6wbRGfkRsR46WrjSo=;
        b=jwtoynMueB+K4lOyQ8g8mL2D1Q9F09+DoLGBwNcim5wqVwqPOCO9XKCLR+htu1+qwX
         YRnNi7Z+25nS8dzhVUdPnv993EaCdfXHZomalR79neUoQvdMcaeJFdQKRMarfdj11y3U
         zkgFRKv1MwpC3TJHvDiwQPrqKjhBGYOIixJac8JINqZVBzq1s50N3zIzU5fcuIne0gTt
         8OP/3m7CrYTDhj7L5XBP8vFwfk3yZG1ErH1/WV4v9zWM6oTgJf4PbOCHs6K+YgzcXGBH
         AmVVWVRNM4lBaNevrNCnAecrf3cHp+syFCUXFRE7yqo5+tr6hNaxrrFMj67xFeJEu2Lu
         RZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759170070; x=1759774870;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YtEAn6CmDr27aj5SF5YUmQQCee6wbRGfkRsR46WrjSo=;
        b=bZZ8NNHqshGYjowryRNIk++WlFpb812oMIp4Ub41zrilass4aIO1YtklIw0yP7q/qz
         59WjAVoT0sESCJB9iM4ntlV7cDkugPq11FBiARIAur6BkkSqC0SXGE336QvFObHw5nKy
         1eQbdeBQK91TejwGvyjPyQmTAgncLZ43bni65DPBObOOnvfGOTIahSNW/72XlKwlaSsC
         WvVeZUUpttaQvKMH8r8DceMZsrfxz3+99qmJFbdGlzjCtg0gBL0DAqec6Gbb1Ckq7xWx
         ESfvk3P3bcoddmPG+iX/H+QugrkKMSNZhNAkOUE5s4ZJwGNk/iHSj5o5z1UMUGl2cgMr
         QjBw==
X-Forwarded-Encrypted: i=1; AJvYcCVsmBlDcW0L9ikLEt1wbyr1pSI3PDIUg+hVYEN6XTqOw0iR3ce9vVuuldUDWJOXWa4JPTH1Ba69Q1UUg32eXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFSgIc8rvwDgYgC+IpZxs9dHNlR4inpdO5ZmZvGxp+MXCyiDMf
	pe/M+CCSHPbjHd2SQZ0C/DvaXTmPllXxswDf4a4vgCMb97Dh/JCxjA9PPoTSrYfypAgiP7fhJw8
	AMEelOozVVq8fB65rgn8IRAAe5gTEwaI=
X-Gm-Gg: ASbGncvErbBzOwPGjdzdnKLXPsM+4pwbrSK7iVbMO3gPYu7s1k9MmW5uUUTkOcdrdD8
	vjIN1sdBbH7/syhBBCLt4X4KIgzkL3I9Y9usKP9Nug7XUUX21MDgeFBwZi9JFYReU24Ys+LDn0b
	EJad0BvQ55HNeA8E7GD/Jjwk9GN/DzIgB+vfaMDQ2/nfS/DilQLa7To1HdKIYVmbWkTf4eDGQEr
	ZLjkiE9
X-Google-Smtp-Source: AGHT+IFrBeJSgMsR3HaccN16cnXjcttv9tgaaLMJKzDwaIqr0lNEmWSIpPm9V69kQrLev4/WKIw2zOmNYU6wfZ7+6Po=
X-Received: by 2002:a05:6214:2625:b0:78e:5985:92f1 with SMTP id
 6a1803df08f44-869973a156fmr24287356d6.11.1759170069962; Mon, 29 Sep 2025
 11:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <20250929065714.27741-3-jjm2473@gmail.com>
 <5700676.tIAgqjz4sF@phil>
In-Reply-To: <5700676.tIAgqjz4sF@phil>
From: jjm2473 <jjm2473@gmail.com>
Date: Tue, 30 Sep 2025 02:20:57 +0800
X-Gm-Features: AS18NWBViMs8caAfXLXKamwDlPSJ-YJ_sCg4Ny2_8taIjH_4vuLBQ4TYDgmLkh0
Message-ID: <CAP_9mL6e8ekL14xycSfPmVSkL7pANLeyewWd=rjxbtMgMQXxxw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org, 
	jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_112111_254175_C8778FC9 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
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

SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5LqOMjAyNeW5tDnmnIgyOeaXpeWRqOS4
gCAyMDoyOOWGmemBk++8mgo+Cj4gQW0gTW9udGFnLCAyOS4gU2VwdGVtYmVyIDIwMjUsIDA4OjU3
OjEzIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTGlhbmdiaW4gTGlhbjoK
PiA+IExpbmtFYXNlIEVhc2VQaSBSMSBpcyBhIGhpZ2gtcGVyZm9ybWFuY2UgbWluaSByb3V0ZXIg
YmFzZWQgb24gUkszNTY4Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IExpYW5nYmluIExpYW4gPGpq
bTI0NzNAZ21haWwuY29tPgo+Cj4gSW4gdjEgdGhpcyBwYXRjaCByZWNlaXZlZCBhbgo+IEFja2Vk
LWJ5OiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPgo+Cj4KPgoKSW4g
dGhlIG5leHQgdmVyc2lvbiwgSSB3aWxsIGFkZCAnQWNrZWQtYnknIHRvIHRoZSBjb21taXQgbWVz
c2FnZQphbmQgdGhlbiBydW4gYGdpdCBmb3JtYXQtcGF0Y2hgIHRvIGF2b2lkIG1pc3NpbmcgaXQu
CgpUaGFua3MhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
