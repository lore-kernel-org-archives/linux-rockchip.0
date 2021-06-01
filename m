Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D2B0C4708F
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 14:01:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5A2D60FE5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 14:01:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E5A2D60FE5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fA0/IY6BjguEUvpORKhdpEaKBWqFfVn/mnv/Y3kG2Ho=; b=oavVw/cKgrvcGo
	hKQcn0T0ptyAh0PUxYEF89bSn7HwHsPJKLtTgGiFxXfOkExfwmenm/SqVD9Ee6LDCPbo2FOs6+xkv
	jYIhFWqjsW/2kOMstntETczuUGhGI0YTXugtN3DnvCPeBXlw99sd8HvNsY99uZSWHZAgm0ZmAat3e
	IGPDeFUhqrIBLtSeia6Vrw0gHeQsZnfnj/wPpB8xidWne+T2/6CyxFkrnWgMc0lGENj2/UT/GAq6e
	XnlNqWgP/IvfaMKvWvInL38F4fy6bYXpLv9MMroWEIEmT09hFW/+gT7tCU616XIixgh95BRUlM8Dd
	PRpws5rdv9v4HYc94rdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo4xu-00GvPa-A4; Tue, 01 Jun 2021 14:01:54 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo4xr-00GvOP-KH
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 14:01:53 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 o2-20020a05600c4fc2b029019a0a8f959dso1994663wmq.1
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Jun 2021 07:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=TxNXvaRSwH5cMN0IqObrUzZItiw85EBExLxK7B6JTbk=;
 b=O0Uf4/PF1Gz23LfW061xvE9TmKzIOovinXsF1shgt6sEFzYmczcX5cGsOAzYL2dU0b
 ep4PCe/1ynAGtQ4M1ZxIqeCyQsiAi3Jfc89Tr5K+KgEZOLWv5T02prBgnnyCltGsY2Yp
 SMnKJheYzgB7h65PCoFUrJfERC5ALLkSs0icfwGMY33QyF7DqhorwXwgIL9/tSGWemGP
 rWx94nxNErLiSDM5K0lu63FNMtWR66RKPISboNDblnqDVG5vXbX6I3CRk1sOlEOYME+B
 tLLGN3fP29MNz8MjWto2sEzQ5QBTU8Y0WrJh5MFj6p0pgccZ5D/qSMBO56lW8VUVTXTQ
 rwiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=TxNXvaRSwH5cMN0IqObrUzZItiw85EBExLxK7B6JTbk=;
 b=klT8T+6Gy/eAWcW+1N9byr82tcBFQR/A1npmWTuBMlBU/qktL56mw9nac5+YFCRLIX
 AaaA7T16ZVMF2Ww4SJGx6Yni6aI7PZhIqx/lVvFI80BQBtoJjgaR2MsQA1Lfs45cY/D9
 IUzDwvPx7ILPQPokGfHdiaxHZ9GmHpJVG+Y5snTnSXqZaqhzucqBSRnykOGjk1kZMvjM
 v/IWlHjyZUtVv1EvCBb2THes/0r+zg6ONVqlkNyYG7zFTwdqxERWUeZf7Po1DrE0xHPQ
 0NNVeaJIaW6rZrDaE/a1E5OH3kBiWG+0n+9O0uGfK4FyWqPp3jwj1nU+lJWaAcQFZ3f6
 RMVg==
X-Gm-Message-State: AOAM531yEpdiOzXEPdFD1R8PWd8NBGBV2DFJhDl7FAqvULAPTuj4iNzF
 Dm4uS/bsboZ/wG8B0SmgbiIEDg==
X-Google-Smtp-Source: ABdhPJyewGO++Mbi4rCpqZMGb6Wna6RRJEtPmWVLMLH2dCmEgIA8t9BE9H/fZURvSn2iFdiocUGxkA==
X-Received: by 2002:a1c:b384:: with SMTP id
 c126mr26885740wmf.110.1622556108028; 
 Tue, 01 Jun 2021 07:01:48 -0700 (PDT)
Received: from dell ([91.110.221.249])
 by smtp.gmail.com with ESMTPSA id v8sm3790884wrc.29.2021.06.01.07.01.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 07:01:47 -0700 (PDT)
Date: Tue, 1 Jun 2021 15:01:45 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [GIT PULL] Immutable branch between MFD and ASoC due for the v5.14
 merge window
Message-ID: <20210601140145.GH543307@dell>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519203754.27184-1-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_070151_720979_0FCD8EA1 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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

SSd2ZSBhcHBsaWVkIHRoZSBub24tQXJtIHBhdGNoZXMuCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMg
c2luY2UgY29tbWl0IDZlZmI5NDNiODYxNmVjNTNhNWU0NDQxOTNkY2NmMWFmOWFkNjI3YjU6Cgog
IExpbnV4IDUuMTMtcmMxICgyMDIxLTA1LTA5IDE0OjE3OjQ0IC0wNzAwKQoKYXJlIGF2YWlsYWJs
ZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9sZWUvbWZkLmdpdCB0Yi1tZmQtYXNvYy12NS4xNAoKZm9yIHlv
dSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDQzN2ZhYWE2Y2ViYWRmOGZmNGMyYzI4ZDdjYjI2ZWQ0
ZTM0YWViMTQ6CgogIGR0LWJpbmRpbmdzOiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09ERUMg
c3VwcG9ydCAoMjAyMS0wNi0wMSAxMzo0MDo0MSArMDEwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KSW1tdXRhYmxlIGJy
YW5jaCBiZXR3ZWVuIE1GRCBhbmQgQVNvQyBkdWUgZm9yIHRoZSB2NS4xNCBtZXJnZSB3aW5kb3cK
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KQ2hyaXMgTW9yZ2FuICgzKToKICAgICAgbWZkOiBBZGQgUm9ja2NoaXAgcms4MTcg
YXVkaW8gQ09ERUMgc3VwcG9ydAogICAgICBBU29DOiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8g
Q09ERUMgc3VwcG9ydAogICAgICBkdC1iaW5kaW5nczogQWRkIFJvY2tjaGlwIHJrODE3IGF1ZGlv
IENPREVDIHN1cHBvcnQKCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3Jr
ODA4LnR4dCB8IDE4OCArKysrKysrKysKIGRyaXZlcnMvbWZkL3JrODA4LmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDgxICsrKysKIGluY2x1ZGUvbGludXgvbWZkL3JrODA4LmggICAg
ICAgICAgICAgICAgICAgICAgIHwgIDgxICsrKysKIHNvdW5kL3NvYy9jb2RlY3MvS2NvbmZpZyAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICA2ICsKIHNvdW5kL3NvYy9jb2RlY3MvTWFrZWZpbGUg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsKIHNvdW5kL3NvYy9jb2RlY3Mvcms4MTdfY29k
ZWMuYyAgICAgICAgICAgICAgICAgIHwgNTM5ICsrKysrKysrKysrKysrKysrKysrKysrKwogNiBm
aWxlcyBjaGFuZ2VkLCA4OTcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNvdW5k
L3NvYy9jb2RlY3Mvcms4MTdfY29kZWMuYwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5p
b3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
