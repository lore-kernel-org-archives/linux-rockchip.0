From: Will Deacon <will.deacon@arm.com>
Subject: Re: [RESEND PATCH 0/1] Fix the "hard LOCKUP" when running a heavy
 loading
Date: Tue, 3 Nov 2015 11:30:30 +0000
Message-ID: <20151103113030.GB14159@arm.com>
References: <1446538209-13490-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1446538209-13490-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Russell King <linux@arm.linux.org.uk>, Heiko Stuebner <heiko@sntech.de>, Huang Tao <huangtao@rock-chips.com>, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, hl@rock-chips.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>, sjg@chromium.org, Stephen Boyd <sboyd@codeaurora.org>, dianders@chromium.org, linux-kernel@vger.kernel.org, Nadav Haklai <nadavh@marvell.com>, linux-rockchip@lists.infradead.org, cwz@rock-chips.com, Jonathan Stone <j.stone@samsung.com>, Gregory CLEMENT <gregory.clement@free-electrons.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Nov 03, 2015 at 04:10:08PM +0800, Caesar Wang wrote:
> As the following log:
> where we experience a CPU hard lockup. The assembly code (disassemble=
d by gdb)
>=20
> 0xc06c6e90 <__tcp_select_window+148>:        beq     0xc06c6eb0<__tcp=
_select_window+180>
> 0xc06c6e94 <__tcp_select_window+152>:        mov     r2, #1008; 0x3f0
> 0xc06c6e98 <__tcp_select_window+156>:        ldr     r5, [r0,#1004] ;=
 0x3ec
> 0xc06c6e9c <__tcp_select_window+160>:        ldrh    r2, [r0,r2]
> ....
>=20
> 0xc06c6ee0 <__tcp_select_window+228>:        addne   r0, r0, #1
> 0xc06c6ee4 <__tcp_select_window+232>:        lslne   r0, r0, r2
> 0xc06c6ee8 <__tcp_select_window+236>:        ldmne   sp, {r4, r5,r11,=
 sp,pc}
>=20
> Could either the =E2=80=9Cstrhi=E2=80=9D/=E2=80=9Dstrlo=E2=80=9D pair=
, or the lslne/ldmne pair, be
> tripping over errata 818325, or a similar errata?

No. One of the conditions for #818325 is:

  The second instruction is an UNPREDICTABLE STR or STM (maximum two2
  registers in the list) with write-back and the write-back register is
  in the list of stored registers.

I don't see either of those in your code snippet above, but then I don'=
t
see your strhi/strlo either. What's going on?

> 0xc06c6eec <__tcp_select_window+240>:        b       0xc06c6f40<__tcp=
_select_window+324>
>=20
> This is patch can fix the *hard lock* in some case.
>=20
> As the Russell said:
> "in other words, which can be handled by updating a control register =
in the firmware or
> boot loader"

Russell is completely correct: this should be worked around in firmware=
=2E
There are a number of reasons for that:

  (1) You want the workaround enabled for all privilege and security
      levels, which means applying it before you enter the kernel.

  (2) If Linux boots in non-secure, then the workaround may silently
      fail to apply.

  (3) The CPU may have an ECO fix, in which case we wouldn't want to
      enable the workaround.

  (4) Some workarounds (albeit not this one, afaict) require changing
      CPU configuration that can only be done very early on, e.g. whils=
t
      "the memory system is idle".

Now, I appreciate that doing this in the kernel may be the easiest thin=
g
for your particular SoC, but that doesn't necessarily mean that it's th=
e
best thing to do in the mainline kernel. Whilst there *is* precedent fo=
r
this already, we've been trying to move away from setting these bits in
the kernel for the reasons mentioned above.

Will
