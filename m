Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B86F0E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 13:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ky9NXV2/csHxUbiFVaBowW2IqkdWgb/X7Wv5shs6IGo=; b=2o5nnFLPeuyKqS
	3DlJX+N8s3qIK051I3pkxOmpk+WnE73ZjJYbp92Ts1ouBGBbvy8h/a49pFQ8m4HKUYZ3mjgaWH74p
	E4czE9P2+rgy93ECRjbkuix7VJn4p1B/qMnD3c09xp9FpLWPeTRWscQ+taBV3ST+XHSDPNrA6UChL
	rABcaZtkraoRgD+0FXmYkLhMpTwe0FwX5KafD6cQjASfgxDGail8UGm2M3QWItmjTh4+IlGxdZe3H
	9KVqeTdEyJTE0n1bO+mxayPAajInbN84+cs+XoJzzJ5eMbzamK+EMcsObmQBsXKPwWGyGfJmSuqkK
	0YJc8RDOQc6/0sDXRzdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAot-0000000A3C4-1yAD;
	Mon, 16 Dec 2024 13:07:31 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAnk-0000000A2pz-3c2N
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 13:06:22 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-4679eacf2c5so39326221cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2024 05:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1734354379; x=1734959179; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wfiIlfNISL7LxmEo4PkSBvNVf6zI03QBaUXQpOsHzBk=;
        b=eiuUlfLEC3PO+uptPhYEn5cpWnv1jLk7PJaMa40ZPM+/AX9NJVKDmDrzJf8AGHjRDn
         l3LXD0nZBC8ytnSfKh4Gb2I48jWbk8hPE67LK8dF/UsmCrpxMUW38uJJA76O5tL1z1cZ
         FNba3TeJE33AFyXWbgYeXx4Qy+Ji3XZFLoVd6+VTMMLv/qMAAzGC0g0odBLhD3RBws3G
         enSCsThvnKkMlQkkAKfF5eQ+h38InKQ9uO4U7BSXoJctQDwIYRnzM/VwnDEtcu4toqlW
         3tRCav/KKZOXVZ4pIWp7n0SQfqS0zjkLRom2gc7J5rPtEx/J0p/i509L/Wzdo+oCJop5
         ahVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734354379; x=1734959179;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wfiIlfNISL7LxmEo4PkSBvNVf6zI03QBaUXQpOsHzBk=;
        b=ca8hDsyti8l9aa7Znfs1IXXcOladVLj7PUTPOP21XpYVyv/dsZiln2GHty9l+2AJMn
         aWZvziC68sjIEqicrAeyApgrrDmubCONsws6MgzMLJamck7Z+PNQ+dovhg7Ze6jhDile
         yFnYFdJC5BI2TWqNauyTL8plxhff7YqEF/4H86It+fFDowYLDstudti2giHUqUh0qW9Q
         MTo49vyK2GtIHZWst1KMtDKc6ZYATnz7OPIKaiO68MnAaG0x5gNFVSkq+MImmooBKzV5
         OFEnRzrfaBBSlFi5p+65tjSdcreEzW2ndLCTVg2qnijOFXST6UemKl8+symSxgCFQABG
         ckew==
X-Forwarded-Encrypted: i=1; AJvYcCX4v60sU1W/hEEd0adQ0UBFupgcjWabwasvg54q/FQn6nOggP7/pDbfJyHDJhgAwHdCKcEuJFSCx7IK4mimHQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+T/WDCjAtaN2gCYAbQqv7xG8+3fNmmA1qOblBPPNZcJoESA0P
	EtQxkqmgLQc7A/+otWtnAc2RJbrJql5wFDXVnYQbyzKKiGOTVtGa3w0IA2VienqY2iCjGREzs/j
	Qc2tg0BRteoqYAev/89he3xRGRM6Tzm7U8RZNzQ==
X-Gm-Gg: ASbGnctrmQm6nJjiDUl3Tj7bb3w0vw3QSyAX88rGFqXPkOH47w2xJ/XmsCU2/nWl+ur
	FFbuUAWAP60qvGHR16hBq/SMWeWD/XdthiWWq
X-Google-Smtp-Source: AGHT+IE9Cnqk1RFA303SJ/sEM1uxY2IdUkOrI2lN1tMljvUXQswUAevS43+NhsG6LahpLoL3T6y4Oj0/rJaBAzD6y9Y=
X-Received: by 2002:a05:622a:454:b0:467:45b7:c498 with SMTP id
 d75a77b69052e-467a577b4c5mr198761341cf.20.1734354378718; Mon, 16 Dec 2024
 05:06:18 -0800 (PST)
MIME-Version: 1.0
References: <20241214081719.3330518-1-andyshrk@163.com> <20241214081719.3330518-9-andyshrk@163.com>
In-Reply-To: <20241214081719.3330518-9-andyshrk@163.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 16 Dec 2024 13:06:07 +0000
Message-ID: <CAPj87rOjqZdyht2y8MK7gVyk_eqEzk1Sy0DcxFtQRuhrHQ_oxA@mail.gmail.com>
Subject: Re: [PATCH v6 08/16] drm/rockchip: vop2: Support 32x8 superblock afbc
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	s.hauer@pengutronix.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, detlev.casanova@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>, Michael Riesch <michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_050621_050370_2BC1C048 
X-CRM114-Status: UNSURE (   9.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andy,

On Sat, 14 Dec 2024 at 08:18, Andy Yan <andyshrk@163.com> wrote:
> This is the only afbc format supported by the upcoming
> VOP for rk3576.
>
> Add support for it.

Out of interest, how was this tested? There is no 32x8 modifier in the
format list in format_modifiers_afbc[], so it seems like it shouldn't
be possible to get a 32x8 buffer on a plane at all.

You can use the drm_info utility from
https://gitlab.freedesktop.org/emersion/drm_info to validate that the
list of supported formats/modifiers for each plane matches your
expectation.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
