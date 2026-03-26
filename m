Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BE5A1099B5F
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 07:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qRj+XZBqjAqbMdTzrlhZ9brkKe6tR5282kA3+O2hSo=; b=UHCkNgoRhFSy1Q
	UaC9kGoADfO06FLlSFjm5MrXnGwZ6t5b9INkP+FY6j7VnZdZUcowuvTUJnOuvryiprIkZ8/tvHS11
	WayNBUBOauFyL8jwD6V5awEuGme0qcbxt0wqRxmjT4dBM0HAJG/hdpabU/zYzgntN4MLd2wiNeQFc
	Ph9kZXLZG0xin6jAlzEAZt92jvUaexGkVujNo31PbEJZFwLucyQKzqHsNcB4opPXSG3cK6Jt/WM2w
	6WZaVhUUWVJLrTvamL0h5UM1xQB8w49f4pMDuanqgLxcpD7kHhtzFdbcHojI9Y90zx6f4H3c0Y3z6
	EeeTovE4LXA3nqwR6HAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5euc-00000004tkK-1f5t;
	Thu, 26 Mar 2026 07:13:50 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5eua-00000004tjm-0gMh
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Mar 2026 07:13:49 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-65c0891f4e9so1114598a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2026 00:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774509226; cv=none;
        d=google.com; s=arc-20240605;
        b=MpS+HXCZy3J4DZZblQC9CMZ5X38xDnq6qI8vTPHMYIMuu2seSKb8YsEFB0vmRkjNu0
         zfZT9WBf+HNAeQqRUXY/VQltgWJOxZnyFCWcX/Ld9O7FYlSLD71OxJcmnsF8A0f+Wtf6
         re1neTYA+PImwgYmXXO7+II7hqAg9pIDrxcU9RFWgzc+1JuqPT77kin66vw3xB0I77VH
         IFipflZTz11joolDIgGZmS0V4CCRlKC9VY5uCokYfE5JhrvjVSb5HDzgiZ3V9qsn009z
         c8L6eC98p9wMqsnU+QxFgqFlxxGtk1jdbl5WI54dyCJCTpB+d0TyOSpfn5RVLEz2Cgzf
         1DKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HVYIfY5RGVU5hE9Bo7jlxGQ00nzCfo4JVtwvFNTkonk=;
        fh=aJYfseS+gG5sb4j3YBwey87ZJnz/EtjJjCTpeofYaTQ=;
        b=NkjRO7JSpMP6CORlqRLX/LOMnEoNFPs8xGtjK8TzS8n9MTRtP6Mmj+MX2htRB8Otr3
         kMZm2mQPx89FYYvqRzexSrXR1lShEPXT5OKpU0Tu7PPM9zDiePLtjLUl41+JxQWxyetb
         pHGOE57tY0iijmRtvq4R75Xddh1jNQdu+uiDHd5u4w6IGhjZCuQkKJjo5EGfA+VfqUes
         cLfS7XvSpkitRTVSQ1hQChvQLdPjcvU1kEfzAl7GgKslcpIbSmpba1sp/HUFQLuL5H6d
         CBxEZzjeCxwpsdBNwCZSBB6lBENuNuPO5GZNPgRdI5YNFGsY5+8rKP/e12p2wstQNi7s
         uNdw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774509226; x=1775114026; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HVYIfY5RGVU5hE9Bo7jlxGQ00nzCfo4JVtwvFNTkonk=;
        b=sCt4EnStIb7IFrdPC6fKcELwTclvGXoX8TyiprCI+ES0QWCHyKfVrtD1prS69ppYqb
         TA5uziwKHz3+0fHHgdg7Qj+5WecaT/8h5g5/VmOEzwzIwsV55O8z+kt52HSbIquvJPY6
         cZgxL6+HF6zLeU22Nl4ympM0XtNCj+D+NWYwPnpkxuc2bYW6LwUKHi12yasQ6NIk7hiH
         BlIXdGwlVjdbtkwx5YBUrjj/DF1iiIwis/R4B6Vhe24IjD4ijD6awiXZbRNwgD2jbZUZ
         IkdTNYlfv191MFjIocY/+ofIrvmfFG6oX5rBy8QFn+Nb1YYY4fKw6e+wU9vS5P5XVIAN
         SceA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774509226; x=1775114026;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HVYIfY5RGVU5hE9Bo7jlxGQ00nzCfo4JVtwvFNTkonk=;
        b=lRqeka7bgYYiBvX9jDV3EWLqErV5IYAbKzuhka7GglIVdlzS3FPB6NtHtd1jbj8U+b
         lPK0vxnOlDOBcXJcb2n/peWpjxZXiC/HE40bxwqfFDDtRJ7jKgBiTKjHdMdSi8j8M9zz
         wP58yFqrpbXCyMxgtNbXp0V1yEBgbc6SeTGLcw+1z9pCXu68cnYdkn7M9gPppuHMR8Ct
         +p5YYlQiDLsyfHWpSd8yEKmpNarDIIvGJO/rhHoCVu46LnJstmFi9rv4LFP5V06bqsFq
         hj0g2t4jT776DHvc2B+xB3ZzOiR9vzvAS6fZkdzJC1kmfEyMtFoRzQvQlqp8xz8K5ZJg
         vI6A==
X-Forwarded-Encrypted: i=1; AJvYcCWte/5hm9CiuYt9DIaCbcVvVBAEj7gLi2mxS0xxQg3CeB1q1w88Mhcywmhl+LceVmK6sQjNf3Sg/wHZO3ckEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwSORCa1Hcz3RUEV6pYuL0pM1MixlmBbzMRidGeFe2JntzmDNhz
	lama+KPoGaGBolCr5nsFbz3cE4INIM8Iw9DdAi+u6fQQYCu9QuVFr3kH4Wz1ZVtLQzBhFyT1Nee
	e67igC1Ep1hA1Lyah8y6w0ZDl1RipR9M=
X-Gm-Gg: ATEYQzx1p/9+9ziX5VKuYVtXsYxKMYj11k2TuT4RIttrun2mgLxMUQZgaf+WPFd6Iuo
	c+f8Ls5lL1J7EHmvihN/rK9sKq6TBNMV/H3BC1eoUDZF4Xoa88v43ONFM/I8sHlEHBHm5EUPYbo
	5MNasetQqZZPN52+4GyoM5HYDbZ/Z+DB30/4a53YCPltnk2oUrc26B95xi0VjE3XfK7XnP9GUfI
	m9T7fSDzjjnVq8EiJMeqBU0SYI2p+ss1eXwYhSdbE1+kQsxXCAlxBJBYSCTzlb5wT7CJhZ25bIS
	+O3DqQ==
X-Received: by 2002:a05:6402:35c7:b0:663:56c4:2dc9 with SMTP id
 4fb4d7f45d1cf-66a826a164amr4266656a12.16.1774509225926; Thu, 26 Mar 2026
 00:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com> <1774403912-210670-4-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1774403912-210670-4-git-send-email-shawn.lin@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 26 Mar 2026 12:43:29 +0530
X-Gm-Features: AQROBzDOhjtwDHUqjyR7aLHKrElwwWK5j8GxED5sK_-NhNXgE0WUA3wwNc4lR-Q
Message-ID: <CANAwSgSwKt04OYX4ckkMu+iRm2D8BFp9FpjRWUh=5ad77dErqw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition
 trace support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Steven Rostedt <rostedt@goodmis.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_001348_220288_68E28FAF 
X-CRM114-Status: UNSURE (   9.42  )
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

Hi Shawn,

On Wed, 25 Mar 2026 at 07:29, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Rockchip platforms provide a 64x4 bytes debug FIFO to trace the
> LTSSM history. Any LTSSM change will be recorded. It's useful
> for debug purpose, for example link failure, etc.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
Tested-by: Anand Moon <linux.amoon@gmail.com>

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
