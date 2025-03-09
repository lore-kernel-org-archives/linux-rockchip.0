Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C48C28B2E
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 09:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ko1HDaJY1x8jWx1TMpWCSkDj+7W+9k2rdIVeiOsVg38=; b=jD3+wX04wPytm3
	YqcVti4nOR/YQoZJ3hHP8T+0uqgEL+ObWXOb5IQrY+lmHvxeuD3hZwuAlBcB+mIli1yW2CQEK23SK
	1Jzt+MoPUa9hAGOKSyC+e5F8IDsKd7Y8wW5XQi4zqYIGe/MO9eVf/dpJUWTOzM+dRuHQSV0Weub07
	znx55Muc4voIDnAaOcqQEUzE6g8e5iPRh78MvJhMaM3Tg30utqxa4CYHLxsCcRGs57CoFkW2jOopO
	/e1Z1MolbatHyqb5+rJ8bLfKRNEMCeVz68FMLb85Q9hM8EDGEKUx0jen5b/2ijgeHNruecp0usqF2
	ewBUrLIxe+YNsE03Sn4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCsN-00000000H3M-1XX9;
	Sun, 09 Mar 2025 09:23:15 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCo3-00000000GVD-19n1
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 09:18:49 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-e53ef7462b6so2751325276.3
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 01:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511926; x=1742116726; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NjoirmZ/5qUE6QTY9P4KcVvh5GMm6iUYiIH5ki0k/yU=;
        b=VlI1+4iDWcNVmArg4ZzNUfpAfnSsS8JYXRj9rR6wYdQVFLFzILJxAJDsqouzNZxW7/
         KiEkX00RcgUeN2rHuJmr5dpaX9Wg38PZCfZYgAfvTmYJ8nocFHjkH9LF4RBkQ7sEndTt
         hAP5UqgyrPQWzZnJRawub9WLr6DkolEsflJorDUrTvvrd4LFmrwLJNadivNTpDqN4A8V
         rGo7bFbi3q+M7rH5P8zBPQvl7r/7RXKKVM8MMlQbFwwRWo+cqQ8Iq3n6XFAyyFyOjAgp
         4NVOO1XPpPErGjVDaP130ta2nvOEqVQmIZgBwg6xUw3jJP2UeJE6UeVK+TpA3H9jDqPc
         J7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511926; x=1742116726;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NjoirmZ/5qUE6QTY9P4KcVvh5GMm6iUYiIH5ki0k/yU=;
        b=iXTaGOlngDxsmupf7FPCF+2le5nobZ/OfwxocXZWRQPB6vXvC9NQvyY7K1D/0IjV+l
         mXMPETXJeFzu6g1mzNOuZBONOKEwrv5Weaz/cz2kX2c+dn5JP2q6dvg9toHZhRVCnERk
         Xue9gkayU1tKBsX4YoLLGlY417n/wHGEPpp704W/Dnv3qkfb43GQOgNOyC/08gUyUf8F
         B6gaFIAXkSVvgevztQEcCFMo9TEmAD9/ZiY3jLhubup9oR2xoMT7uxu1tco4TPF6CwJr
         /glBHXwTUwfrcvHP9xcycKJgQBoyBtMKI8i/2vrXROkXKryzNcIQvB1pOK7ne2EwQRcA
         8L3w==
X-Forwarded-Encrypted: i=1; AJvYcCVjU+FXnTh4sGfraCE5jApmACtpxDsQkNQKb/aYONTmEy1lwsKzyLQhsSqsaFJaYsQ82rGeZ4OEE9Wv5e4SUA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVSU5m3mgSoXFapNQON/FbwqFeIHd5gMwhpAKccVQOeXSd/Jtq
	Encwr7ti6UfxaQgslTwtimJlgcbIA0tE5k0TXsfWwzWDSX5NscIDkMfk1vFL+OplZepfNfK0rQ+
	dgaSddBjYOMSf3UCsHRm1WiUYk57uyQHrI0zoiw==
X-Gm-Gg: ASbGnctBdGivCtlUtxDhznAEspWpzh0yBGE+Kp34EIP8HtgZRunKyV0XhMfdnj0BUsT
	QnWTGAJTuIjWUTlxeEWJJ1GE6htaSvE5Yci3BIHk8BdjafYXxallx0OuEiFRYMnMEhUbCZYC+Ia
	lbLBB736sn7wy+rjMX6uiaz5tfvJQYHTbVZPFGJW4t
X-Google-Smtp-Source: AGHT+IH4XPDX1sv9v/O4fHv7FdLtDOK1nSH/pYUTyPU6X3cGpWa7GU9Du4h4efF7cwLgeAUNmZ/eF/AUnWn6NuP38pQ=
X-Received: by 2002:a05:6902:1ac4:b0:e60:99e3:f8c with SMTP id
 3f1490d57ef6-e635c2fea74mr12941522276.46.1741511926194; Sun, 09 Mar 2025
 01:18:46 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-5-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-5-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:18:34 +0200
X-Gm-Features: AQ5f1JoYXHeMEkeI_3Qn-eZRDS7BsRAZP2eXaZlYLUfhSvlvlxiajsqE4pYYYnE
Message-ID: <CAA8EJpoqRbTgkvQz8E2PpgC9QAsQBHvedY8=xH4haMVMjNbSuA@mail.gmail.com>
Subject: Re: [PATCH v5 05/12] phy: rockchip: samsung-hdptx: Drop unused
 phy_cfg driver data
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_011847_311045_CF98CBC6 
X-CRM114-Status: GOOD (  10.15  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> There is no usage of phy_cfg in the upstream driver data, nor in the
> downstream one, hence remove it.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 1 -
>  1 file changed, 1 deletion(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
